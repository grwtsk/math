# isFinitelyPresented_iff_exists_finite_presentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71c36095-5b7e-4f6b-e5f7-1651ccb3c050",
  "kind": "theorem",
  "lexical_name": "isFinitelyPresented_iff_exists_finite_presentation",
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
  "slug": "isfinitelypresented-iff-exists-finite-presentation--44513bcf1455324f50589603",
  "source": {
    "blob": "d184eef742764d8b0a72903bd4b18a496f1ffa94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 105,
    "path": "GRWTSK/Algebra/GroupTheory/Presentation/Variant34b31b1550207bb1aba7edf1493c74bce3805c0b61c61c44dde156c1908d2303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44513bcf1455324f50589603432f02987334acfcf6307fa8a1338fbba17ace47",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Presentation/Variant34b31b1550207bb1aba7edf1493c74bce3805c0b61c61c44dde156c1908d2303.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71c36095-5b7e-4f6b-e5f7-1651ccb3c050`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFinitelyPresented_iff_exists_finite_presentation :
    Group.IsFinitelyPresented G ↔ ∃ (n : ℕ) (P : Group.Presentation G (Fin n)), P.rel.Finite := by
  constructor
  · rintro ⟨n, φ, hφ, S, hSfin, hS⟩
    exact ⟨n, .ofFreeGroupHom φ hφ S hS.symm, hSfin⟩
  · rintro ⟨n, P, hP⟩
    exact P.isFinitelyPresented hP

end Group.Presentation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Presentation/Variant34b31b1550207bb1aba7edf1493c74bce3805c0b61c61c44dde156c1908d2303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Presentation/Variant34b31b1550207bb1aba7edf1493c74bce3805c0b61c61c44dde156c1908d2303.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d184eef742764d8b0a72903bd4b18a496f1ffa94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
