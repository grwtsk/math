# Ideal.homogeneousHull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dea044a5c24f6f0916a6330693895bd8356bd2639f4fb39efd06f9b05e929cc1",
  "kind": "def",
  "lexical_name": "Ideal.homogeneousHull",
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
  "slug": "ideal-homogeneoushull--988d3038558b5f9a2df4294c",
  "source": {
    "blob": "b623dabee29246f945132bf825ca5dbcb6a693ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 547,
    "path": "GRWTSK/Algebra/HomogeneousIdeal/Variant4a2860ee062eb9368a35465f926a9b139924b96527c726a7cbf8025b98eed123.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:988d3038558b5f9a2df4294c2ff08cfb9043a1d4e228df533b3d23f093a7e117",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousIdeal/Variant4a2860ee062eb9368a35465f926a9b139924b96527c726a7cbf8025b98eed123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dea044a5c24f6f0916a6330693895bd8356bd2639f4fb39efd06f9b05e929cc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 547–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Ideal.homogeneousHull : HomogeneousIdeal 𝒜 :=
  ⟨Ideal.span { r : A | ∃ (i : ι) (x : I), (DirectSum.decompose 𝒜 (x : A) i : A) = r }, by
    refine' Ideal.homogeneous_span _ _ fun x hx => _
    obtain ⟨i, x, rfl⟩ := hx
    apply SetLike.homogeneous_coe⟩
#align ideal.homogeneous_hull Ideal.homogeneousHull

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousIdeal/Variant4a2860ee062eb9368a35465f926a9b139924b96527c726a7cbf8025b98eed123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousIdeal/Variant4a2860ee062eb9368a35465f926a9b139924b96527c726a7cbf8025b98eed123.lean#L547).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b623dabee29246f945132bf825ca5dbcb6a693ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
