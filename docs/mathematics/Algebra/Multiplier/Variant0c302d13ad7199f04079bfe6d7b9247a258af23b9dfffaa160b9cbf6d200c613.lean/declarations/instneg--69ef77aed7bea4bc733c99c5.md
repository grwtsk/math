# instNeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f5442e6bcdfc3d055e1678a0e70283fc2e53262a3dffeaea15e25e19c224db4",
  "kind": "instance",
  "lexical_name": "instNeg",
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
  "slug": "instneg--69ef77aed7bea4bc733c99c5",
  "source": {
    "blob": "48448c134f1ac164daad12545b0ef9b81d062acf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 131,
    "path": "GRWTSK/Algebra/Multiplier/Variant0c302d13ad7199f04079bfe6d7b9247a258af23b9dfffaa160b9cbf6d200c613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69ef77aed7bea4bc733c99c50124f30a8ad903ebed8225572abf780248bd1ba8",
  "verification": {
    "reference": "docs/verification/Algebra/Multiplier/Variant0c302d13ad7199f04079bfe6d7b9247a258af23b9dfffaa160b9cbf6d200c613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f5442e6bcdfc3d055e1678a0e70283fc2e53262a3dffeaea15e25e19c224db4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNeg : Neg 𝓜(𝕜, A) where
  neg a :=
    { toProd := -a.toProd
      central := fun x y =>
        show -a.snd x * y = x * -a.fst y by
          simp only [neg_mul, mul_neg, central] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Multiplier/Variant0c302d13ad7199f04079bfe6d7b9247a258af23b9dfffaa160b9cbf6d200c613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Multiplier/Variant0c302d13ad7199f04079bfe6d7b9247a258af23b9dfffaa160b9cbf6d200c613.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48448c134f1ac164daad12545b0ef9b81d062acf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
