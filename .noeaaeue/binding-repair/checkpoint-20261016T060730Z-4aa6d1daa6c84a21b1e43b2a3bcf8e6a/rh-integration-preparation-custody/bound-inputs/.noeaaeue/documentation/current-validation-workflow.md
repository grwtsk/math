# Working with the current Lean repository

`GRWTSK/` and `GRWTSK.lean` contain the formal library. Keep the existing
mathematical taxonomy until the separate coordinating repository determines its evolution. Put
mathematical exposition in `docs/`; keep drivers, receipts, custody records,
agent coordination and other process work under `.noeaaeue/`.

## During a bounded mathematical task

1. Read `AGENTS.md` and its linked instructions. Work in the existing `main`
   checkout, preserving other workers' edits. Keep exact hypotheses, open
   premises, credit and licenses visible.
2. Use the pinned environment. `lake build` checks the ordinary library build.
   For proof acceptance, use the selected source-bound verification driver:
   fresh project dependency closure, `--trust=0`, fatal warnings, positive and
   intended negative controls, and the owned-declaration axiom audit. Keep the
   receipt's scope explicit; a selected result does not admit other sources.
3. Register each maintained mathematical guide in
   `.noeaaeue/documentation/reference/documentation-layout.json`, with its exact
   source binding and contribution scope. Use the existing written/source-only
   status while replay is pending. Claim fresh verification only when the
   corresponding successful receipt binds the current source bytes.
4. Regenerate and check documentation with the commands below. A new module
   also changes navigation inventory counts, even if it has no guide yet.
5. Finish a bounded batch, report its exact source and receipt paths, and
   request an integration checkpoint. Leave unfinished, unexported drafts
   explicitly pending. Do not export candidate-only sources to make an
   inventory or build pass.

## At an integration checkpoint

Use one integration owner. Other writers pause source, entry-point and metadata
edits, and allow existing native jobs to finish. Native verification shares the
repository replay lock; respect `BUSY` and preserve its receipt.

Finish guide registration and documentation rendering before freezing the next
current input contract. Run from the repository root with Python 3.11+ and the
existing test dependencies:

```sh
python3 -B .noeaaeue/scripts/check_documentation.py --render
python3 -B .noeaaeue/scripts/check_documentation.py
python3 -O -B .noeaaeue/scripts/check_documentation.py
python3 -B .noeaaeue/scripts/test_documentation_layout.py
python3 -O -B .noeaaeue/scripts/test_documentation_layout.py
```

Preserve the exact previous observation, generated catalog and selected contract
before installing anything. Follow the [reviewed preparation recipe](../binding-repair/validation-completion/workflow-owner-preparation-proposal.json)
for archive copies, hashes and the explicit installation code. The current
checker default today is `.noeaaeue/bindings/moebius-current-inputs-v5.json`;
at the next checkpoint use the exact previous contract named by its receipt.
Keep all older versioned contracts and expected hashes intact.

Choose fresh, absent checkpoint and contract paths. The directory creation must
succeed without replacing an existing checkpoint; both producers require an
absent `--output` path. For example:

```sh
set -e
checkpoint_stamp="$(date -u +%Y%m%dT%H%M%SZ)-$$"
checkpoint_dir=".noeaaeue/binding-repair/checkpoint-$checkpoint_stamp"
CURRENT_CONTRACT=".noeaaeue/bindings/moebius-current-inputs-$checkpoint_stamp.json"
mkdir "$checkpoint_dir"
python3 -B .noeaaeue/scripts/source_observations.py --output "$checkpoint_dir/current-source-observations.new.json"
```

The observation producer creates a proposal; it does not install the active
observation. Review exact source roles, the entry-point closure, candidate-only
reasons and historical findings. With writers still paused, install the new
observation only after rederiving it from current inputs and confirming that the
active observation still equals the archived previous bytes. Repeat the collision
check immediately before replacement. On drift, retain every version and stop
for reconciliation. Observation is byte and role bookkeeping; it supplies no
proof acceptance and validation never refreshes it automatically.

After the reviewed installation, regenerate the catalog with `--render`; the
plain catalog command checks exact expected bytes. Create a new current contract
at the absent path:

```sh
python3 -B .noeaaeue/scripts/generate_math_source_catalog.py --render
python3 -B .noeaaeue/scripts/generate_math_source_catalog.py
python3 -B .noeaaeue/scripts/check_math_layout.py
python3 -B .noeaaeue/binding-repair/observe_current_moebius_inputs.py --output "$CURRENT_CONTRACT"
```

The contract producer requires an independently qualified current runtime profile.
Changed owner bytes require fresh scoped qualification; updating its accepted
hashes cannot substitute for replay. Run preparation before occupying the native
lane. Pass the exact new contract explicitly to both application commands; do not
silently change the verifier default or historical pins:

```sh
python3 -B .noeaaeue/scripts/check_moebius_response.py --manifest "$CURRENT_CONTRACT" --validate-only
python3 -B .noeaaeue/scripts/check_math_trust.py --lean-self-test
python3 -B .noeaaeue/scripts/check_math_trust.py --memory-mib 12288
python3 -B .noeaaeue/scripts/check_moebius_response.py --manifest "$CURRENT_CONTRACT" --memory-mb 12288
```

Run the native commands serially. The full replay commands allow 12 GiB per
Lean process for memory-intensive source imports; the native self-test retains
its separately checked 4 GiB default. A memory-limit failure remains a failed
receipt; rerun the exact frozen input with the recorded resource budget before
claiming success. The final two commands produce distinct source-bound replay
receipts; retain their actual outcomes and declared scopes. The current input
contract remains an unaccepted observation even after a separate replay succeeds.
New source work can stale that observation again.

After validation, communicate the checked snapshot and pending-source list, then
release the writers. Continue using selected checks during development. The
integration owner installs shared current bindings at the next whole-library
checkpoint.

Historical receipts and expected hashes keep their original identities. Keep
stale historical pins explicitly stale and historical replay blocked. Preserve
failed receipts and original variants; a fresh current receipt does not rewrite
their history.
