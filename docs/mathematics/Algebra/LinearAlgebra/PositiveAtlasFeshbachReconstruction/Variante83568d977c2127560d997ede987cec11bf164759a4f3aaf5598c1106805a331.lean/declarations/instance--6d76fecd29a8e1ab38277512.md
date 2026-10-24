# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d102fab5f2312001f44d3b76aadd4e2a44b3fb74664c9a8a83bb67438e2c594",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--6d76fecd29a8e1ab38277512",
  "source": {
    "blob": "304f4024db8c1a24f8aad765316fca7faf11e969",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 17,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachReconstruction/Variante83568d977c2127560d997ede987cec11bf164759a4f3aaf5598c1106805a331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d76fecd29a8e1ab382775123db68ca7004f9c79df8a28a3a422189ef74cb204",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveAtlasFeshbachReconstruction/Variante83568d977c2127560d997ede987cec11bf164759a4f3aaf5598c1106805a331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d102fab5f2312001f44d3b76aadd4e2a44b3fb74664c9a8a83bb67438e2c594`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private instance : Invertible two where
  invOf := fun _ _ => 1 / 2
  invOf_mul_self := by
    ext i j
    change (∑ _ : Unit, (1 / 2 : ℚ) * 2) = if i = j then 1 else 0
    norm_num
  mul_invOf_self := by
    ext i j
    change (∑ _ : Unit, (2 : ℚ) * (1 / 2)) = if i = j then 1 else 0
    norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveAtlasFeshbachReconstruction/Variante83568d977c2127560d997ede987cec11bf164759a4f3aaf5598c1106805a331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachReconstruction/Variante83568d977c2127560d997ede987cec11bf164759a4f3aaf5598c1106805a331.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `304f4024db8c1a24f8aad765316fca7faf11e969` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
