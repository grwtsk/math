# Ideal.absNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff808f7b361ecb0ba78e1168e1cbc80189948c2d395759ae453c0c3ce0a1dcef",
  "kind": "def",
  "lexical_name": "Ideal.absNorm",
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
  "slug": "ideal-absnorm--5e018a192b5e69f5efc91f9f",
  "source": {
    "blob": "74c99b49893a1e688ace8d85303eb753632bea5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 250,
    "path": "GRWTSK/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e018a192b5e69f5efc91f9f7d4be3f1e39d106826297a259041a38dc9f8a9e9",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff808f7b361ecb0ba78e1168e1cbc80189948c2d395759ae453c0c3ce0a1dcef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Ideal.absNorm [Infinite S] [IsDedekindDomain S] [Module.Free ℤ S]
    [Module.Finite ℤ S] : Ideal S →*₀ ℕ where
  toFun := Submodule.cardQuot
  map_mul' I J := by dsimp only; rw [cardQuot_mul]
  map_one' := by dsimp only; rw [Ideal.one_eq_top, cardQuot_top]
  map_zero' := by rw [Ideal.zero_eq_bot, cardQuot_bot]
#align ideal.abs_norm Ideal.absNorm

namespace Ideal

variable [Infinite S] [IsDedekindDomain S] [Module.Free ℤ S] [Module.Finite ℤ S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variantbf6174341fc81193e40d1169c19878aa6fe22a509fa277126970be311d24ccbe.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74c99b49893a1e688ace8d85303eb753632bea5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
