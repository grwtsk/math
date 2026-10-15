# Revision of indexed dictionaries

Fix an ordered list of key–index references. Assume that the old and new
dictionaries give exactly the same optional lookup at every referenced index:
\[
\forall r\in\mathrm{references},\quad
\mathrm{before}[r.2]?=\mathrm{after}[r.2]?.
\]
`unpack_eq_of_agreement` proves equality of their actual checked decoders.
`unpack_pack_after` specializes this to a packed input list and concludes that
the revised dictionary still decodes to precisely that original list.

## Exact premises and certificates

`AgreesOnReferences` includes missing lookups as optional values; it does not
assume the indices valid. Agreement is reflexive, symmetric and transitive on
the same reference sequence. At an individual reference, equality of decoded
key–payload options is equivalent to equality of the optional payload lookups.

`RevisionCertificate` carries the old dictionary, new dictionary, complete
reference sequence and an actual proof of agreement. Its preservation theorem
uses that proof. A matching hash, count, taxonomy label, prior receipt or
communication event cannot replace the agreement premise.

## Checked obstructions

`stale_slots_counterexample` uses dictionaries `[7,8]` and `[8,7]`, with the
same valid reference list. Dictionary lengths, reference counts and bounds
agree, but the decoded payloads differ. A negative control rejects reuse of
the old round-trip proof for the changed slots.

`failed_decoders_do_not_imply_agreement` gives equal overall failures `none`
while a later referenced lookup differs. Thus equality of failed decoder
outputs is weaker than the per-reference agreement used by the preservation
theorem. Neither counterexample depends on a probabilistic test.

## Sources, verification and credit

The [source](../../../../GRWTSK/Logic/FiniteSequences/DictionaryRevision.lean)
reuses the [exact codec](indexed-dictionary.md). Its
[positive consumers](../../../../GRWTSK/Logic/FiniteSequences/Checks/Positive/DictionaryRevision.lean)
and [fresh selected receipt](../../../../evidence/Logic/FiniteSequences/indexed-dictionary-checks-2026-10-15.json)
bind the actual source, controls and owned-declaration audit. The pinned Lean
4.33.0 replay uses trust zero and fatal warnings, allowing only `propext`,
`Classical.choice` and `Quot.sound`. Dependency objects are reused and
fingerprinted. Whole-repository and independent-review acceptance are not
claimed.

The finite-list theorems supply exact mathematical revision conditions. The
[operational cache](../../../reference/content-cache.md) separately tests its
hashes, serialization, compression and file operations; a verified refinement
from that Python adapter to these definitions remains open.

Human mathematical direction: R.A. Jacob Martone. Formalization assistance:
OpenAI Codex. Local source is MIT; Mathlib retains upstream credit and licensing.
