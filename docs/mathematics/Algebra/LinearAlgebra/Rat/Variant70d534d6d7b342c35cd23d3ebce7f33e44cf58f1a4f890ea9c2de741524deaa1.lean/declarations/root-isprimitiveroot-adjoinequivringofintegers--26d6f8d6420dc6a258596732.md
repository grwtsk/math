# _root_.IsPrimitiveRoot.adjoinEquivRingOfIntegers'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:563a4a36aba4e6480eecdc9a57b4293257fbf33ab141ff2aac6ce47fc14263ad",
  "kind": "def",
  "lexical_name": "_root_.IsPrimitiveRoot.adjoinEquivRingOfIntegers'",
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
  "slug": "root-isprimitiveroot-adjoinequivringofintegers--26d6f8d6420dc6a258596732",
  "source": {
    "blob": "8819be702853baa5ebb27a9b1c7e3475776169f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 204,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26d6f8d6420dc6a258596732db50024bad06eeaa32d5d437b4633615f7989dec",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:563a4a36aba4e6480eecdc9a57b4293257fbf33ab141ff2aac6ce47fc14263ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def _root_.IsPrimitiveRoot.adjoinEquivRingOfIntegers'
    [hcycl : IsCyclotomicExtension {p} ℚ K] (hζ : IsPrimitiveRoot ζ p) :
    adjoin ℤ ({ζ} : Set K) ≃ₐ[ℤ] 𝓞 K :=
  @adjoinEquivRingOfIntegers p 1 K _ _ _ _ (by convert hcycl; rw [pow_one]) (by rwa [pow_one])
#align is_primitive_root.adjoin_equiv_ring_of_integers' IsPrimitiveRoot.adjoinEquivRingOfIntegers'

/-- The ring of integers of a `p`-th cyclotomic extension of `ℚ` is a cyclotomic extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rat/Variant70d534d6d7b342c35cd23d3ebce7f33e44cf58f1a4f890ea9c2de741524deaa1.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8819be702853baa5ebb27a9b1c7e3475776169f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
