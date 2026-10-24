# instModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da883c8fbf5446464fe4cdffce5a3ad78487beabc9eea3c3f4e39941a851191d",
  "kind": "instance",
  "lexical_name": "instModule",
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
  "slug": "instmodule--831001d3f2f241edc3bd8284",
  "source": {
    "blob": "fa621d13d0abb11ac34ffb0f85a41c4e151323b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 661,
    "line": 654,
    "path": "GRWTSK/Algebra/RingTheory/Multiplication/Variant6c2d25e8e596d58090eda9e8862a9546f4e4dd85a794e867d7e75f409257d365.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:831001d3f2f241edc3bd8284cc98c41061d884938e307b2f26ef063f80e3f2d4",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplication/Variant6c2d25e8e596d58090eda9e8862a9546f4e4dd85a794e867d7e75f409257d365.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da883c8fbf5446464fe4cdffce5a3ad78487beabc9eea3c3f4e39941a851191d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 654–661.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instModule [Semiring R] [Module R V] : Module (HahnSeries Γ R)
    (HahnModule Γ' R V) := {
  inferInstanceAs (DistribSMul (HahnSeries Γ R) (HahnModule Γ' R V)) with
  mul_smul := mul_smul'
  one_smul := fun _ => one_smul'
  add_smul := fun _ _ _ => add_smul Module.add_smul
  zero_smul := fun _ => zero_smul' }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplication/Variant6c2d25e8e596d58090eda9e8862a9546f4e4dd85a794e867d7e75f409257d365.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplication/Variant6c2d25e8e596d58090eda9e8862a9546f4e4dd85a794e867d7e75f409257d365.lean#L654).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa621d13d0abb11ac34ffb0f85a41c4e151323b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
