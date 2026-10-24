# PX_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33ddda1630f077a612cd639d28b7d43b183a53a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52469c40079a6ff2075c59938e8bfe46e0c5af5726c77ad7f8e2f66b2b8db17e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5749c017-c841-4f93-e5f8-e36e1e870a65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29eef8ad-429a-75ff-ca8a-403f0e1c2bf1",
  "kind": "lemma",
  "lexical_name": "PX_eq",
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
  "slug": "px-eq--15e2fbe2463f9a2eff7c62db",
  "source": {
    "blob": "33ddda1630f077a612cd639d28b7d43b183a53a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 103,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant52469c40079a6ff2075c59938e8bfe46e0c5af5726c77ad7f8e2f66b2b8db17e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15e2fbe2463f9a2eff7c62db64b60cc4f2100f6995d1ab9ab9df801b61f56c69",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant52469c40079a6ff2075c59938e8bfe46e0c5af5726c77ad7f8e2f66b2b8db17e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29eef8ad-429a-75ff-ca8a-403f0e1c2bf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PX_eq (X τ : ℝ) :
    Zeta23.PX X τ = -(1 / Real.pi) * ∑ n ∈ primeRange X, acoef n * Real.cos (τ * ycoef n) := rfl

/-! ## Abstract functional data

In the concrete instantiation `phiHat, Phi, Aphi, g, a, b` are Zeta23/Defs.lean's `P.phiHatR T`,
`P.PhiR T`, `P.Aphi T`, `P.g T`, `P.a T`, `P.b T` ([eq:phidef], [eq:abdef], [eq:PhigA]). -/

/-- The T-dependent taper data [eq:PhigA, eq:abdef] (abstract; see the bridge). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant52469c40079a6ff2075c59938e8bfe46e0c5af5726c77ad7f8e2f66b2b8db17e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant52469c40079a6ff2075c59938e8bfe46e0c5af5726c77ad7f8e2f66b2b8db17e.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33ddda1630f077a612cd639d28b7d43b183a53a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
