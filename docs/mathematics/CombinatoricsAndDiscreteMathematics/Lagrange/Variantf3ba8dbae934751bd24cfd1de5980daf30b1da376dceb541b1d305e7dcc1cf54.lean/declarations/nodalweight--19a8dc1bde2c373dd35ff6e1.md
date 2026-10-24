# nodalWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ab07137c27df2d40bcb1a6fd9893b35c88a87ba06db9590cee0d8363fa64de5",
  "kind": "def",
  "lexical_name": "nodalWeight",
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
  "slug": "nodalweight--19a8dc1bde2c373dd35ff6e1",
  "source": {
    "blob": "0507f8cfc109876f1c55fd293eb5667198b30ea8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 586,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variantf3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19a8dc1bde2c373dd35ff6e163ce0a39803ef519b87119a6f68ea4e5d1adb7e6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variantf3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ab07137c27df2d40bcb1a6fd9893b35c88a87ba06db9590cee0d8363fa64de5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nodalWeight (s : Finset ι) (v : ι → F) (i : ι) :=
  ∏ j in s.erase i, (v i - v j)⁻¹
#align lagrange.nodal_weight Lagrange.nodalWeight

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variantf3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variantf3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0507f8cfc109876f1c55fd293eb5667198b30ea8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
