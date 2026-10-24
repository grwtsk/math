# coeff.linearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:adbd3470df67887b07e41720f350bf17a85b56115d4e101246733c85ebd3d3f5",
  "kind": "def",
  "lexical_name": "coeff.linearMap",
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
  "slug": "coeff-linearmap--b4551aa756bdab5658a53e4d",
  "source": {
    "blob": "850ccd987861169c5918b42f459bb318355f8f58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 564,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/HahnSeries/Variant3b7b1440ef9cf13d18bdc0927c19a908f76f618c1670b87b463d31939713c7bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4551aa756bdab5658a53e4d0bc71c1e7ff09a89f34a2b0bbfc2a55ab21e04de",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/HahnSeries/Variant3b7b1440ef9cf13d18bdc0927c19a908f76f618c1670b87b463d31939713c7bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:adbd3470df67887b07e41720f350bf17a85b56115d4e101246733c85ebd3d3f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coeff.linearMap (g : Γ) : HahnSeries Γ R →ₗ[R] R :=
  { coeff.addMonoidHom g with map_smul' := fun _ _ => rfl }
#align hahn_series.coeff.linear_map HahnSeries.coeff.linearMap

section Domain

variable {Γ' : Type*} [PartialOrder Γ']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/HahnSeries/Variant3b7b1440ef9cf13d18bdc0927c19a908f76f618c1670b87b463d31939713c7bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/HahnSeries/Variant3b7b1440ef9cf13d18bdc0927c19a908f76f618c1670b87b463d31939713c7bf.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `850ccd987861169c5918b42f459bb318355f8f58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
