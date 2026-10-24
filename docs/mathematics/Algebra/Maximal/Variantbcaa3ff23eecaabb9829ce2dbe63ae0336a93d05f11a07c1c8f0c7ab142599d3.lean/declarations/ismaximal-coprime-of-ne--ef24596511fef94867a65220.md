# IsMaximal.coprime_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbb487ec-4af6-1aba-d09f-65f8a9d63dfd",
  "kind": "theorem",
  "lexical_name": "IsMaximal.coprime_of_ne",
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
  "slug": "ismaximal-coprime-of-ne--ef24596511fef94867a65220",
  "source": {
    "blob": "dcd05babd6e01a85e9d5457e9d693384065fb250",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 70,
    "path": "GRWTSK/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef24596511fef94867a652208867953a3f84d068f60eeb3a746d6a3f3adbe139",
  "verification": {
    "reference": "docs/verification/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbb487ec-4af6-1aba-d09f-65f8a9d63dfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsMaximal.coprime_of_ne {M M' : Ideal α} (hM : M.IsMaximal) (hM' : M'.IsMaximal)
    (hne : M ≠ M') : M ⊔ M' = ⊤ := by
  contrapose! hne with h
  exact hM.eq_of_le hM'.ne_top (le_sup_left.trans_eq (hM'.eq_of_le h le_sup_right).symm)

/-- **Krull's theorem**: if `I` is an ideal that is not the whole ring, then it is included in some
    maximal ideal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Maximal/Variantbcaa3ff23eecaabb9829ce2dbe63ae0336a93d05f11a07c1c8f0c7ab142599d3.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcd05babd6e01a85e9d5457e9d693384065fb250` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
