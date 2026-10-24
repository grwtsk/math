# of_mul_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30b3a260-9026-3426-6f23-63ff87989903",
  "kind": "theorem",
  "lexical_name": "of_mul_of",
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
  "slug": "of-mul-of--647afa37f5a5bd7ee4eb3203",
  "source": {
    "blob": "fbc18a1a20551c9954c156e0c4d8cd2f94d2a29a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 214,
    "path": "GRWTSK/Algebra/Ring/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:647afa37f5a5bd7ee4eb3203330a19c60374a9789106dca22a3ec1813cd6dd0a",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30b3a260-9026-3426-6f23-63ff87989903`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_mul_of {i j} (a : A i) (b : A j) :
    of A i a * of A j b = of _ (i + j) (GradedMonoid.GMul.mul a b) :=
  mulHom_of_of a b

end Mul

section Semiring

variable [∀ i, AddCommMonoid (A i)] [AddMonoid ι] [GSemiring A]

open AddMonoidHom (flipHom coe_comp compHom flip_apply)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbc18a1a20551c9954c156e0c4d8cd2f94d2a29a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
