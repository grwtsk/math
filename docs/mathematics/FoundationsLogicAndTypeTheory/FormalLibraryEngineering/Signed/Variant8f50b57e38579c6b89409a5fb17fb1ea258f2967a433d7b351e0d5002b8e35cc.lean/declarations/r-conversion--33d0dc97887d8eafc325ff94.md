# R_conversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3f9f56c-722a-714b-69a7-e75556a64957",
  "kind": "theorem",
  "lexical_name": "R_conversion",
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
  "slug": "r-conversion--33d0dc97887d8eafc325ff94",
  "source": {
    "blob": "66ffa05e7620437fd268ce9af9fa028ace9f6af4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variant8f50b57e38579c6b89409a5fb17fb1ea258f2967a433d7b351e0d5002b8e35cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33d0dc97887d8eafc325ff94d368b84321c493693c573cc99207607ff3321687",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variant8f50b57e38579c6b89409a5fb17fb1ea258f2967a433d7b351e0d5002b8e35cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3f9f56c-722a-714b-69a7-e75556a64957`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem R_conversion {Γ : List (Expr S)} {A B : Expr S}
    (e : Environment Ω Γ) (hA : Expected P Γ A) (hB : Expected P Γ B) (hc : Converts A B) :
    R Ω hC hw hno A e = R Ω hC hw hno B e := by
  have hwa : WeaklyNormalizing A := by
    rcases hA with ⟨s,rfl⟩ | ⟨s,h⟩
    · exact ⟨_,.refl,Normal.sort s⟩
    · exact h.weaklyNormalizing hw
  have hwb : WeaklyNormalizing B := by
    rcases hB with ⟨s,rfl⟩ | ⟨s,h⟩
    · exact ⟨_,.refl,Normal.sort s⟩
    · exact h.weaklyNormalizing hw
  have hp := Profile.converts (P := P) (Γ := Γ) hwa hwb hc
  have hn := Expr.normalForm_converts (hA.subst_wn hw e.property) (hB.subst_wn hw e.property)
    (hc.subst e.val)
  simp only [R,hp,hn]

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variant8f50b57e38579c6b89409a5fb17fb1ea258f2967a433d7b351e0d5002b8e35cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variant8f50b57e38579c6b89409a5fb17fb1ea258f2967a433d7b351e0d5002b8e35cc.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ffa05e7620437fd268ce9af9fa028ace9f6af4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
