# Use the compact source cache

The [cache reference](../reference/content-cache.md) defines the finite source
scope, source roles, mathematical contracts and limits. Run commands from the
repository root with Python 3.9 or later.

Inspect the current revision and exact source drift:

```sh
python3 -B scripts/cache_math.py status
python3 -B scripts/cache_math.py verify --live
```

An initial snapshot requires the expected absence of a current revision:

```sh
python3 -B scripts/cache_math.py snapshot --expected none
```

For later snapshots, use `revise --expected DIGEST` with the exact current
revision digest returned by `status`. An unexpected revision or changed input
blocks reference advancement; failed attempts and candidate objects remain
available. Source edits do not need a global quiet period or another worker's
permission.

To reconstruct a snapshot, choose an absent or empty directory outside the
live repository:

```sh
python3 -B scripts/cache_math.py expand /absolute/empty/output-directory
```

The output contains the captured source paths under `GRWTSK/`, the root Lean
entry point and captured context. This is byte reconstruction, not a new Lean
replay or cold reconstruction of external dependencies. Use the
[native verification procedure](verify.md) before making a new proof claim.

Validate the declared method taxonomy and its hostile controls separately:

```sh
python3 -B scripts/cache_taxonomy.py check cache/taxonomy.json
python3 -B scripts/test_cache_taxonomy.py
python3 -O -B scripts/test_cache_taxonomy.py
python3 -B scripts/test_cache_math.py
python3 -O -B scripts/test_cache_math.py
```

`--require-complete` is expected to fail while the 215 intended method identities
are absent. It must not be made to pass by fabricating records or weakening
the identity comparison.

Agents read scoped tasks in `cache/coordination/tasks/` and append distinct event
files in `cache/coordination/events/`. They preserve the task's owned paths,
source variants, actual failures and explicit remaining premises. Integrators
read back the current sources, native receipts and revision before accepting
or committing progress. A task or event never grants remote-publication rights.
