Reflected heat, finite Hodge transfer, and centered-source continuation

Direction: R.A. Jacob Martone. Research and implementation: OpenAI ChatGPT. MIT.
Ten author PDFs, 180 pages, are source-bound in paper-sources.json; their bytes
are unchanged and are not redistributed. derivation.txt gives the written
proofs and states every remaining arithmetic premise.

Run from the repository root, with the recorded test dependency available:
  python3 -B scripts/verify_screw_hodge_transfer.py --mode both

The fresh replay completed 64 tests and two complete 4096-cell endpoint
verifications in each Python mode. The evaluator uses exact rational bounds,
retains every signed Mobius coefficient, and independently trial-factors each
one. Certificates concern the centered reconstruction error at s=0 and s=1;
they are not zeta values or zero counts. Reports bind all executed source bytes.
Complete log bodies are retained in the user-facing package; this archive
records their hashes, and the runner emits full bodies on every replay.

The new written error series is holomorphic on Re(s)>-1, with a truncation
bound (2H+1)/(16N) across 0<=Re(s)<=1 and |Im(s)|<=H. All nontrivial source
principal parts remain in the retained mean transform. The finite cyclic-to-
Hodge adapter uses frequency-squared mass and retains both parity channels.
Neither this adapter nor its finite positivity proves the arithmetic source
comparison or the remaining subpower mean-growth bound.

No Lean candidates are installed, and no native or full-repository checks
were run. Existing source, pins, workflows, canonical documentation, historical
receipts and the finite height-40 atlas are unchanged. This is archival evidence,
not admission to the formal library or a claim of RH or new nonvanishing.
