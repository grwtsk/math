# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b864a5d6b85f76976ffb63a057024fd76f1f9b043fef261fdb48c33a7f529c70",
  "kind": "example",
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
  "slug": "example--eca1d8c6cea2ccce7f4f75a9",
  "source": {
    "blob": "300813f7cff2a1f7d81cae560ae76894d647f2a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 197,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant320a8298b8d2debe545735b91f6ae62c1cd4d14b07bd235f9860cc8e40ff0e6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eca1d8c6cea2ccce7f4f75a9c8c43c936cf6a220d0c813e170c03eb200aa1f5f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant320a8298b8d2debe545735b91f6ae62c1cd4d14b07bd235f9860cc8e40ff0e6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b864a5d6b85f76976ffb63a057024fd76f1f9b043fef261fdb48c33a7f529c70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {n : ℝ} :
    (n + 1 / 2) ^ 2 * (n + 1 + 1 / 3) = 1 / 3 + n * (19 / 12) + n ^ 2 * (7 / 3) + n ^ 3 := by
  -- `conv_lhs` prevents `ring_nf` picking a bad normalization for both sides.
  conv_lhs => ring_nf

-- We can't use `guard_target =ₛ` here, as while it does detect stray `OfNat`s, it also complains
-- about differing instance paths.
/--
trace: n : ℝ
_hn : 0 ≤ n
⊢ 1 / 3 + n * (19 / 12) + n ^ 2 * (7 / 3) + n ^ 3 ≤ 1 / 3 + n * (5 / 3) + n ^ 2 * (7 / 3) + n ^ 3
-/
#guard_msgs (trace) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant320a8298b8d2debe545735b91f6ae62c1cd4d14b07bd235f9860cc8e40ff0e6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant320a8298b8d2debe545735b91f6ae62c1cd4d14b07bd235f9860cc8e40ff0e6b.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `300813f7cff2a1f7d81cae560ae76894d647f2a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
