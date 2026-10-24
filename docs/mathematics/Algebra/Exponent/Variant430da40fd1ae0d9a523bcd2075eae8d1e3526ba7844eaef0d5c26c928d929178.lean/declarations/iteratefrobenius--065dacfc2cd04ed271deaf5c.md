# iterateFrobenius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95e67e4a294c03ae9d976c64adee6b24e84fc1246eca2170a7c46c24f7fc88c3",
  "kind": "def",
  "lexical_name": "iterateFrobenius",
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
  "slug": "iteratefrobenius--065dacfc2cd04ed271deaf5c",
  "source": {
    "blob": "d4a47583e87f8a55f580963a03a76b0676a99096",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 265,
    "path": "GRWTSK/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:065dacfc2cd04ed271deaf5cf434664ee01878cc136d3e1de2a212676ee641b9",
  "verification": {
    "reference": "docs/verification/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95e67e4a294c03ae9d976c64adee6b24e84fc1246eca2170a7c46c24f7fc88c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def iterateFrobenius {n : ℕ} (hn : exponent K L ≤ n) : L →+* K where
  toFun := iterateFrobeniusAux K L p n
  map_zero' := by
    apply (algebraMap K L).injective
    rw [(algebraMap K L).map_zero,
      algebraMap_iterateFrobeniusAux K p hn 0,
      zero_pow]
    exact Nat.pos_iff_ne_zero.mp <| expChar_pow_pos K p n
  map_add' a b := by
    have inj := (algebraMap K L).injective
    have : ExpChar L p := expChar_of_injective_ringHom inj p
    apply inj
    rw [(algebraMap K L).map_add,
      algebraMap_iterateFrobeniusAux K p hn a,
      algebraMap_iterateFrobeniusAux K p hn b,
      algebraMap_iterateFrobeniusAux K p hn (a + b),
      add_pow_expChar_pow a b]
  map_one' := by
    apply (algebraMap K L).injective
    rw [(algebraMap K L).map_one,
      algebraMap_iterateFrobeniusAux K p hn 1,
      one_pow]
  map_mul' a b := by
    apply (algebraMap K L).injective
    rw [(algebraMap K L).map_mul,
      algebraMap_iterateFrobeniusAux K p hn a,
      algebraMap_iterateFrobeniusAux K p hn b,
      algebraMap_iterateFrobeniusAux K p hn (a * b),
      mul_pow]

variable {L} in
/-- Action of `iterateFrobenius` on the top field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Exponent/Variant430da40fd1ae0d9a523bcd2075eae8d1e3526ba7844eaef0d5c26c928d929178.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4a47583e87f8a55f580963a03a76b0676a99096` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
