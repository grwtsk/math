# piiUnionInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49ee2a9092a7eab1312a562270e9e9bbfa8169e7bcd1c502592991f952d5c9eb",
  "kind": "def",
  "lexical_name": "piiUnionInter",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "piiunioninter--86965cad7bef4fa39d11c64e",
  "source": {
    "blob": "3f58d006d5570e35dfb85d57c9a3424fd85c5b0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 379,
    "path": "GRWTSK/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86965cad7bef4fa39d11c64e673b6243be115a0bb8c5472c62e8bd953c19f57f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49ee2a9092a7eab1312a562270e9e9bbfa8169e7bcd1c502592991f952d5c9eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def piiUnionInter (π : ι → Set (Set α)) (S : Set ι) : Set (Set α) :=
  { s : Set α |
    ∃ (t : Finset ι) (_ : ↑t ⊆ S) (f : ι → Set α) (_ : ∀ x, x ∈ t → f x ∈ π x), s = ⋂ x ∈ t, f x }
#align pi_Union_Inter piiUnionInter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f58d006d5570e35dfb85d57c9a3424fd85c5b0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
