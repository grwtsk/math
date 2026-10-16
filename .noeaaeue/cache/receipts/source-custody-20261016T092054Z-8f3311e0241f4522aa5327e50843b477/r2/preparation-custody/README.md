# Independent physical all-file expansion comparison (inert)

The helper has not been executed. It is stdlib-only and imports no project or
expanded code. Only the two schema files, explicit selected/prior manifests,
selected compressed cache objects and the named external expansion are read.
It never discovers or reads the live mathematical source universe, invokes Git,
Lean, Lake or subprocesses, or writes cache/ref/manifest/source/shared state.

After guarded revise and expand, the owner may run:

    python3 -I -B <absolute compare_expansion_bytes.py> --revision <new R> --destination <external directory>

Isolation is required before nonbuiltin imports; destination/environment code
is not imported. The helper reports JSON to stdout, never to a file. Retain its
stdout outside the expansion to avoid introducing an unexpected file.

It verifies canonical selected manifest identity, complete source/catalog/context
logical coverage and blob metadata, an injective relocated_name map, exact
physical regular-file and required-parent-directory sets, every decompressed raw
byte against its physical counterpart, and stable observed states. Leaf and
ancestor symlinks, specials, missing/extra files, extra empty directories and
changed/corrupt bytes refuse. Source schemas and input archives retain their
exact identities in comparison-helper-manifest.json. Prior55b3 is context only;
parent_equals_prior is reported, not an ancestry acceptance assertion.

This is an operational check, not Lean verified. It does not prove SHA256
injectivity, atomic global snapshot consistency, cache-parent-chain correctness,
live source freshness, source-to-object provenance, a JSON/parser refinement,
executable behavior or any mathematical acceptance. It does not repeat the
cache tool's lexical import/role-binding checks. Resource bounds and accepted
regular-file hardlinks are explicit in the binding manifest. Concurrent
filesystem activity may cause conservative refusal; do not repair or mutate
the checked expansion to conceal it.

Prepared under grwtsk contributors direction with OpenAI Codex assistance;
local MIT terms. Existing cache/relocation implementation and upstream source
credits remain attached; no independent mathematical validation is claimed.

## R2 hardening (inert; no execution or testing here)

R1 and its custody receipts are preserved unchanged. R1's reported passing
comparisons/controls do not qualify r2. Leaf opens now add O_NONBLOCK and reject
a nonregular opened fstat mode before any data read, then require exact identity.
This addresses the ordinary regular-to-FIFO swap between stat and open.

Directory enumeration now streams scandir into an explicitly bounded collection,
checking before every append. Initial names consume/reserve the global100000
entry budget before child traversal, including not-yet-visited siblings. Final
collections cannot exceed the exact initial directory size. Depth and all
original final observed-state guards remain. This is no universal filesystem
deadline or absolute kernel/stdlib memory bound. No listdir allocation remains.

Deterministic FIFO-swap harness target: read_regular(base_fd, relative,
expected_identity=None), intercept the leaf os.open after its no-follow stat,
replace the observed regular leaf with FIFO, and delegate open with the original
flags. O_NONBLOCK must be set; the opened-regular guard must reject promptly
before stream.read. Run any such hostile fixture outside the repository/cache
and preserve the actual result separately. This bundle never runs the harness.
