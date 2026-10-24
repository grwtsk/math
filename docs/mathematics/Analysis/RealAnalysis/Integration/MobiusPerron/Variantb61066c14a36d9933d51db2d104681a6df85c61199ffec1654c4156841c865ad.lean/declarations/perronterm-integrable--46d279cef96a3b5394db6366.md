# perronTerm_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:102c5f47-ca9f-1348-afbe-4b101eff5b79",
  "kind": "theorem",
  "lexical_name": "perronTerm_integrable",
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
  "slug": "perronterm-integrable--46d279cef96a3b5394db6366",
  "source": {
    "blob": "3a4f6174aa7292c2518c10a4b29ce5d659d6e661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46d279cef96a3b5394db63660c25db462d4e778ec79c73bd5bce140cba8a90a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:102c5f47-ca9f-1348-afbe-4b101eff5b79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perronTerm_integrable (c x : ℝ) (hc : 0 < c) (hx : 0 < x) (n : ℕ) :
    Integrable (perronTerm c x n) := by
  have hm : Measurable (perronTerm c x n) := by
    unfold perronTerm perronIntegrand LSeries.term
    split_ifs <;> fun_prop
  refine (integrable_norm_iff hm.aestronglyMeasurable).mp ?_
  simpa only [perronTerm_norm] using (perronIntegrand_integrable c x hc hx).norm.const_mul
    ‖LSeries.term (fun m => (ArithmeticFunction.moebius m : ℂ)) (1 + (c : ℂ)) n‖

/-- Summability of the full L1 norms is established before exchanging the infinite series and
integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerron/Variantb61066c14a36d9933d51db2d104681a6df85c61199ffec1654c4156841c865ad.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a4f6174aa7292c2518c10a4b29ce5d659d6e661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
