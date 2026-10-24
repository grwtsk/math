# instCommRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a28289f14e094756aeb10a73c4322426960b6eba717d8a66cb98c8039956470b",
  "kind": "instance",
  "lexical_name": "instCommRing",
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
  "slug": "instcommring--12be15b8a3f1e9e9ff838949",
  "source": {
    "blob": "dcfa550bef879b80985f3c4becd0993666b4b30e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 74,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12be15b8a3f1e9e9ff83894998c0e7ac606783aa9cbe06284d17df2a269eb59d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a28289f14e094756aeb10a73c4322426960b6eba717d8a66cb98c8039956470b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCommRing (n : ℕ) [NeZero n] : CommRing (Fin n) :=
  { Fin.instAddMonoidWithOne n, Fin.addCommGroup n, Fin.instCommSemigroup n, Fin.instDistrib n with
    one_mul := Fin.one_mul'
    mul_one := Fin.mul_one',
    -- porting note: new, see
    -- https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/ring.20vs.20Ring/near/322876462
    zero_mul := Fin.zero_mul'
    mul_zero := Fin.mul_zero' }
#align fin.comm_ring Fin.instCommRing

/-- Note this is more general than `Fin.instCommRing` as it applies (vacuously) to `Fin 0` too. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantbafc01ba3e809036d937a86b0d6fbba9d0f78edcb520e08870888268d915451d.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcfa550bef879b80985f3c4becd0993666b4b30e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
