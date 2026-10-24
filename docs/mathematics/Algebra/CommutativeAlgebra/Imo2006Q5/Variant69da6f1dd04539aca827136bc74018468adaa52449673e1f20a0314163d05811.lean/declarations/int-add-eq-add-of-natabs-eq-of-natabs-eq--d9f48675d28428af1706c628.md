# Int.add_eq_add_of_natAbs_eq_of_natAbs_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34c2a900-fc8e-d78e-7643-f8a3e34c7e5f",
  "kind": "theorem",
  "lexical_name": "Int.add_eq_add_of_natAbs_eq_of_natAbs_eq",
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
  "slug": "int-add-eq-add-of-natabs-eq-of-natabs-eq--d9f48675d28428af1706c628",
  "source": {
    "blob": "9db9f67a501201b03a4406201ae94795eaf5cdc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 61,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variant69da6f1dd04539aca827136bc74018468adaa52449673e1f20a0314163d05811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9f48675d28428af1706c628552477662215dc434e3c54e3360fe674a86c1ae0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Imo2006Q5/Variant69da6f1dd04539aca827136bc74018468adaa52449673e1f20a0314163d05811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34c2a900-fc8e-d78e-7643-f8a3e34c7e5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int.add_eq_add_of_natAbs_eq_of_natAbs_eq {a b c d : ℤ} (hne : a ≠ b)
    (h₁ : (c - a).natAbs = (d - b).natAbs) (h₂ : (c - b).natAbs = (d - a).natAbs) :
    a + b = c + d := by
  rcases Int.natAbs_eq_natAbs_iff.1 h₁ with h₁ | h₁
  · rcases Int.natAbs_eq_natAbs_iff.1 h₂ with h₂ | h₂
    · exact (hne <| by linarith).elim
    · linarith
  · linarith

/-- The main lemma in the proof: if $P^k(t)=t$, then $P(P(t))=t$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Imo2006Q5/Variant69da6f1dd04539aca827136bc74018468adaa52449673e1f20a0314163d05811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variant69da6f1dd04539aca827136bc74018468adaa52449673e1f20a0314163d05811.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9db9f67a501201b03a4406201ae94795eaf5cdc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
