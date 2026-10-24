# mulDistribMulActionFilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc19a9c169e27009cc708d6586c53ab2f72238d38d67c9f2cbf344d45533a186",
  "kind": "def",
  "lexical_name": "mulDistribMulActionFilter",
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
  "slug": "muldistribmulactionfilter--ea0b1fce6439b76328d5de2b",
  "source": {
    "blob": "f44f14855a7cceda6219b62385caf571a591ca77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1084,
    "line": 1068,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant1755cea992130c83d5c9d0d55fe3e3b894dba2889dfe7b1b03bae8fab735e2bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea0b1fce6439b76328d5de2bbb8e915c0f9eb6b638203043a100e6c181221b16",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variant1755cea992130c83d5c9d0d55fe3e3b894dba2889dfe7b1b03bae8fab735e2bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc19a9c169e27009cc708d6586c53ab2f72238d38d67c9f2cbf344d45533a186`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1068–1084.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable def mulDistribMulActionFilter
    [Monoid α] [Monoid β] [MulDistribMulAction α β] : MulDistribMulAction α (Set β) where
  smul_mul _ _ _ := image_image2_distrib <| smul_mul' _
  smul_one _ := image_singleton.trans <| by rw [smul_one, singleton_one]

scoped[Pointwise]
  attribute [instance] Filter.distribMulActionFilter Filter.mulDistribMulActionFilter

section SMulWithZero

variable [Zero α] [Zero β] [SMulWithZero α β] {f : Filter α} {g : Filter β}

/-!
Note that we have neither `SMulWithZero α (Filter β)` nor `SMulWithZero (Filter α) (Filter β)`
because `0 * ⊥ ≠ 0`.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variant1755cea992130c83d5c9d0d55fe3e3b894dba2889dfe7b1b03bae8fab735e2bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variant1755cea992130c83d5c9d0d55fe3e3b894dba2889dfe7b1b03bae8fab735e2bf.lean#L1068).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f44f14855a7cceda6219b62385caf571a591ca77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
