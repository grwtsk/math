# FiniteGroupData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74d455fd51e92f1ef84e9972bdc97c9458142ba9f7fae28ac13b90d2c21aa6b9",
  "kind": "structure",
  "lexical_name": "FiniteGroupData",
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
  "slug": "finitegroupdata--0a393f0d05bcc748ca4c33cd",
  "source": {
    "blob": "837bfcc776ca0cfa217379c08c0ef525bb35dddb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante83ee821d78ea81d64d28872f0aae5b15924023533c3923b487960fbadd8efca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a393f0d05bcc748ca4c33cd1e6c7801515c8a6ee5d4db64ac735e36018c8e7a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante83ee821d78ea81d64d28872f0aae5b15924023533c3923b487960fbadd8efca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74d455fd51e92f1ef84e9972bdc97c9458142ba9f7fae28ac13b90d2c21aa6b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteGroupData where
  Carrier : Type u
  one : Carrier
  mul : Carrier → Carrier → Carrier
  inv : Carrier → Carrier
  elements : List Carrier
  complete : ∀ g : Carrier, g ∈ elements
  mul_assoc :
    ∀ a b c : Carrier, mul (mul a b) c = mul a (mul b c)
  one_mul :
    ∀ a : Carrier, mul one a = a
  mul_one :
    ∀ a : Carrier, mul a one = a
  inv_mul :
    ∀ a : Carrier, mul (inv a) a = one
  mul_inv :
    ∀ a : Carrier, mul a (inv a) = one

/-- Homomorphism of the finite group interfaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante83ee821d78ea81d64d28872f0aae5b15924023533c3923b487960fbadd8efca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante83ee821d78ea81d64d28872f0aae5b15924023533c3923b487960fbadd8efca.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `837bfcc776ca0cfa217379c08c0ef525bb35dddb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
