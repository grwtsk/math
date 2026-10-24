# comapDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:071beec7bfbc2ea05fa140a48efc9eb8e4ac431bdfd2f8580c9bc479fa840e6f",
  "kind": "def",
  "lexical_name": "comapDomain",
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
  "slug": "comapdomain--5900f0a26a3737d64197cae6",
  "source": {
    "blob": "37d16fe66eba020b9ab0e8d901dc239d7f342cde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 704,
    "line": 694,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantebec0bc51fe07838ce975bd0a446e7d59fb9706cd2ba41f97e69619fa4a2c303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5900f0a26a3737d64197cae66aaa079daba3cda5f14a618291e145ebacf31267",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantebec0bc51fe07838ce975bd0a446e7d59fb9706cd2ba41f97e69619fa4a2c303.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:071beec7bfbc2ea05fa140a48efc9eb8e4ac431bdfd2f8580c9bc479fa840e6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comapDomain [Zero M] (f : α → β) (l : β →₀ M) (hf : Set.InjOn f (f ⁻¹' ↑l.support)) : α →₀ M
    where
  support := l.support.preimage f hf
  toFun a := l (f a)
  mem_support_toFun := by
    intro a
    simp only [Finset.mem_def.symm, Finset.mem_preimage]
    exact l.mem_support_toFun (f a)
#align finsupp.comap_domain Finsupp.comapDomain

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantebec0bc51fe07838ce975bd0a446e7d59fb9706cd2ba41f97e69619fa4a2c303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantebec0bc51fe07838ce975bd0a446e7d59fb9706cd2ba41f97e69619fa4a2c303.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37d16fe66eba020b9ab0e8d901dc239d7f342cde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
