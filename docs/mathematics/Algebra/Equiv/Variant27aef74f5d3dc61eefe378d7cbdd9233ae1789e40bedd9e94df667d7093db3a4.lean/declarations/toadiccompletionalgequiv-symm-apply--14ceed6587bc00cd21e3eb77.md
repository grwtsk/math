# toAdicCompletionAlgEquiv_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b443af5cd33a9a4bcdeb6be0fddf9eeb84161fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 358,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:070e7c0c-a930-96cb-07c7-33cae001b8ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abbfcd10-0a75-9958-46be-59595811e5df",
  "kind": "lemma",
  "lexical_name": "toAdicCompletionAlgEquiv_symm_apply",
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
  "slug": "toadiccompletionalgequiv-symm-apply--14ceed6587bc00cd21e3eb77",
  "source": {
    "blob": "6b443af5cd33a9a4bcdeb6be0fddf9eeb84161fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 358,
    "path": "GRWTSK/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14ceed6587bc00cd21e3eb7753ccefda963fbf4a9fa2d9b00337ff0a052fa4a0",
  "verification": {
    "reference": "docs/verification/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abbfcd10-0a75-9958-46be-59595811e5df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toAdicCompletionAlgEquiv_symm_apply
    (x : AdicCompletion (MvPolynomial.idealOfVars σ R) (MvPolynomial σ R)) :
      (toAdicCompletionAlgEquiv σ R).symm x = toAdicCompletionInv σ R x := by
  rfl

end toAdicCompletion

end MvPowerSeries

section toMvPowerSeries

variable {R σ τ : Type*} [CommSemiring R] {f : PowerSeries R} (i : σ) (r : R)

open PowerSeries Filter
namespace PowerSeries

/-- Given a power series `p : R⟦X⟧` and an index `i`, we may view it as a
multivariate power series `toMvPowerSeries i p : MvPowerSeries σ R`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b443af5cd33a9a4bcdeb6be0fddf9eeb84161fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
