# groupHomologyπEven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d84f347a182de66f5046939097e4b56e8eb27bc620628fc14894ce2105a8863f",
  "kind": "abbrev",
  "lexical_name": "groupHomologyπEven",
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
  "slug": "grouphomology-even--a5276fc1c7ed4cbe809b2e56",
  "source": {
    "blob": "fc06230dd9825c46f7e26a4eb0730207fd0037ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 105,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5276fc1c7ed4cbe809b2e56cffd6eb394ab61fedbec7a729c7f2b1e0c763ce7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d84f347a182de66f5046939097e4b56e8eb27bc620628fc14894ce2105a8863f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev groupHomologyπEven
    (hg : ∀ x, x ∈ Subgroup.zpowers g) (i : ℕ) [NeZero i] (hi : Even i) :
    ↧(LinearMap.ker A.ρ.norm) ⟶ groupHomology A i :=
  (ShortComplex.moduleCatCyclesIso <| subCompNormHom A g).inv ≫
    ShortComplex.homologyπ _ ≫ (groupHomologyIsoEven A g hg i hi).inv

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteCyclic/Variant5af93cf174c5ef7b2ccc11cfa1981336ab55dc8828e6e2a67df4b15ec7aee56a.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc06230dd9825c46f7e26a4eb0730207fd0037ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
