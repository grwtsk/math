# ofMapMulInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96b4e37811fa9e15ab478c24040b54b8e651cae0122bc2d987005328fb2ddd81",
  "kind": "def",
  "lexical_name": "ofMapMulInv",
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
  "slug": "ofmapmulinv--d16135a14c56e313d0bf15e0",
  "source": {
    "blob": "f0193a2c9cf329b4ed3c7d141ec0d2166141e586",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 135,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Varianteaa75b830586c7edffde9518af2f7126af3beb2557097bfca98de9c0b05c46b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d16135a14c56e313d0bf15e0ea41c627831c6ac6109d8599a4c2544b7291614c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Varianteaa75b830586c7edffde9518af2f7126af3beb2557097bfca98de9c0b05c46b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96b4e37811fa9e15ab478c24040b54b8e651cae0122bc2d987005328fb2ddd81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofMapMulInv {H : Type*} [Group H] (f : G → H)
    (map_div : ∀ a b : G, f (a * b⁻¹) = f a * (f b)⁻¹) : G →* H :=
  (mk' f) fun x y =>
    calc
      f (x * y) = f x * (f <| 1 * 1⁻¹ * y⁻¹)⁻¹ := by
        { simp only [one_mul, inv_one, ← map_div, inv_inv] }
      _ = f x * f y := by
        { simp only [map_div]
          simp only [mul_inv_cancel, one_mul, inv_inv] }

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Varianteaa75b830586c7edffde9518af2f7126af3beb2557097bfca98de9c0b05c46b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Varianteaa75b830586c7edffde9518af2f7126af3beb2557097bfca98de9c0b05c46b1.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0193a2c9cf329b4ed3c7d141ec0d2166141e586` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
