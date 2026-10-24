# nonnegativeCombination_preserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a15d1f6be688c3b0b304beaeac98d942537e03b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f43b9ed2-9488-c3e4-f038-26d2b7dd80d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6667f6ff-0e92-e254-771c-5f6965632958",
  "kind": "theorem",
  "lexical_name": "nonnegativeCombination_preserves",
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
  "slug": "nonnegativecombination-preserves--af818e79f2ed583c68a90192",
  "source": {
    "blob": "a15d1f6be688c3b0b304beaeac98d942537e03b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af818e79f2ed583c68a901927df4acbf12fdb2c62f93b8fc78b842757519bd92",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6667f6ff-0e92-e254-771c-5f6965632958`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonnegativeCombination_preserves
    (cone : PositiveCone State)
    {first second : State →ₗ[ℝ] State}
    (hfirst : PositivityPreserving cone first)
    (hsecond : PositivityPreserving cone second)
    {a b : ℝ}
    (ha : 0 ≤ a)
    (hb : 0 ≤ b) :
    PositivityPreserving cone (a • first + b • second) := by
  intro state hstate
  have hleft : a • first state ∈ cone.carrier :=
    cone.smul_nonnegative_mem ha (hfirst hstate)
  have hright : b • second state ∈ cone.carrier :=
    cone.smul_nonnegative_mem hb (hsecond hstate)
  simpa using cone.add_mem hleft hright

/-- The explicit pointwise nonnegative cone on a finite real-valued field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a15d1f6be688c3b0b304beaeac98d942537e03b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
