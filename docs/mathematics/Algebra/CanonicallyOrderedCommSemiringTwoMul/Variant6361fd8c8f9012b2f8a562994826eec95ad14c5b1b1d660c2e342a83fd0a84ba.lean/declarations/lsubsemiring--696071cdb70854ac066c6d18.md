# lSubsemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4dd017800602ba0f8e723666b94258f6cb9ccaea18a4c241a5dbaa7034a34ca1",
  "kind": "def",
  "lexical_name": "lSubsemiring",
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
  "slug": "lsubsemiring--696071cdb70854ac066c6d18",
  "source": {
    "blob": "0e151aa7aa22c5371a76d48edc6e8171b1b9e621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 195,
    "path": "GRWTSK/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:696071cdb70854ac066c6d1810687757b989e65bcb82e95ef29dbf7e8a04da7c",
  "verification": {
    "reference": "docs/verification/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4dd017800602ba0f8e723666b94258f6cb9ccaea18a4c241a5dbaa7034a34ca1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lSubsemiring : Subsemiring (ℕ × ZMod 2) where
  carrier := {l | l ≠ (0, 1)}
  zero_mem' := by decide
  one_mem' := by decide
  add_mem' := add_L
  mul_mem' := mul_L
#align counterexample.ex_L.L_subsemiring Counterexample.ExL.lSubsemiring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6361fd8c8f9012b2f8a562994826eec95ad14c5b1b1d660c2e342a83fd0a84ba.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e151aa7aa22c5371a76d48edc6e8171b1b9e621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
