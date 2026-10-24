# generate_presieveOfSections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c80ae9d09ae1705fd7332c94c8401804d7b0bd93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c0d3342-674b-d274-6814-07cdc437c09d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51e01cea-3948-b019-d42e-4e389a9fb242",
  "kind": "lemma",
  "lexical_name": "generate_presieveOfSections",
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
  "slug": "generate-presieveofsections--5c8099b3bf078b0453c9c9de",
  "source": {
    "blob": "c80ae9d09ae1705fd7332c94c8401804d7b0bd93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 146,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c8099b3bf078b0453c9c9de57498f9d835efa5e598c2076d3a92312536b004e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51e01cea-3948-b019-d42e-4e389a9fb242`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma generate_presieveOfSections
    {U V : X.AffineZariskiSite} {s : Set Γ(X, U.toOpens)} {f : V ⟶ U} :
    Sieve.generate (presieveOfSections U s) f ↔ ∃ f ∈ s, ∃ g, X.basicOpen (f * g) = V.toOpens := by
  obtain ⟨V, hV⟩ := V
  constructor
  · rintro ⟨⟨W, hW⟩, ⟨f₁, hf₁⟩, -, ⟨f₂, hf₂s, rfl⟩, rfl⟩
    subst hf₁
    obtain ⟨f₃, hf₃⟩ := U.2.basicOpen_basicOpen_is_basicOpen f₂ f₁
    refine ⟨f₂, hf₂s, f₃, ?_⟩
    rw [X.basicOpen_mul, hf₃, inf_eq_right]
    exact X.basicOpen_le _
  · rintro ⟨f₁, hf₁s, f₂, rfl⟩
    refine ⟨U.basicOpen f₁, ⟨f₂ |_ _, ?_⟩, ⟨f₁, rfl⟩, ⟨f₁, hf₁s, rfl⟩, rfl⟩
    exact (X.basicOpen_res _ _).trans (X.basicOpen_mul _ _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c80ae9d09ae1705fd7332c94c8401804d7b0bd93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
