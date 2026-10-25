# sSup_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3947bd06-43b5-524b-0947-cf4363661767",
  "kind": "theorem",
  "lexical_name": "sSup_nonpos",
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
  "slug": "ssup-nonpos--462eadb49d294a959f48fe4c",
  "source": {
    "blob": "e00fe6a8aad09e666f0eb8b6df38fbafbf09f0f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 902,
    "line": 896,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant33cc0d6a713ddeb6ef768f42a552a268d7bb31a0cbf8b781d4e2b3d3f30b90ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:462eadb49d294a959f48fe4cc2273d79013db12b1d517c36c89441807d8a5c89",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variant33cc0d6a713ddeb6ef768f42a552a268d7bb31a0cbf8b781d4e2b3d3f30b90ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3947bd06-43b5-524b-0947-cf4363661767`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 896–902.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sSup_nonpos (S : Set ℝ) (hS : ∀ x ∈ S, x ≤ (0 : ℝ)) : sSup S ≤ 0 :=
  Real.sSup_le hS le_rfl
#align real.Sup_nonpos Real.sSup_nonpos

/-- As `0` is the default value for `Real.sInf` of the empty set, it suffices to show that `S` is
bounded below by `0` to show that `0 ≤ sInf S`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variant33cc0d6a713ddeb6ef768f42a552a268d7bb31a0cbf8b781d4e2b3d3f30b90ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant33cc0d6a713ddeb6ef768f42a552a268d7bb31a0cbf8b781d4e2b3d3f30b90ad.lean#L896).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e00fe6a8aad09e666f0eb8b6df38fbafbf09f0f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
