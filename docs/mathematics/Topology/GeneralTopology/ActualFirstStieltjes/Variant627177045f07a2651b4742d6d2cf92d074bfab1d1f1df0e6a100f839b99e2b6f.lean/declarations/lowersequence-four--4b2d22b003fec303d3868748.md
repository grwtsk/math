# lowerSequence_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5d641e8-9334-0b7e-5a19-414fe12f1d6b",
  "kind": "theorem",
  "lexical_name": "lowerSequence_four",
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
  "slug": "lowersequence-four--4b2d22b003fec303d3868748",
  "source": {
    "blob": "24ce213f9bbdbda90995cf76826da03e51ac5341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b2d22b003fec303d38687487d7010ccd246ebaba4395e8f695a93d2e10d8671",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5d641e8-9334-0b7e-5a19-414fe12f1d6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowerSequence_four : lowerSequence 4 = stieltjesLowerFour := by
  unfold lowerSequence stieltjesSequence logQuotient stieltjesLowerFour
  have h4 : Real.log (4 : ℝ) = 2 * Real.log 2 := by
    convert Real.log_pow (2 : ℝ) 2 using 1 <;> norm_num
  norm_num [Finset.sum_Icc_succ_top]
  rw [h4]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24ce213f9bbdbda90995cf76826da03e51ac5341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
