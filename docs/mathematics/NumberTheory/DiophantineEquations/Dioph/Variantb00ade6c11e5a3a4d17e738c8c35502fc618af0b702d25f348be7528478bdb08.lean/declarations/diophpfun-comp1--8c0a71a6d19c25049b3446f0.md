# diophPfun_comp1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18663d71-27d5-7bd1-e7ea-58dee6a0679c",
  "kind": "theorem",
  "lexical_name": "diophPfun_comp1",
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
  "slug": "diophpfun-comp1--8c0a71a6d19c25049b3446f0",
  "source": {
    "blob": "f71afed2b47ebfcc74931ab6af18f84857689f78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 492,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variantb00ade6c11e5a3a4d17e738c8c35502fc618af0b702d25f348be7528478bdb08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c0a71a6d19c25049b3446f083eda80acb4ef752fa2866353095499e912f5388",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Dioph/Variantb00ade6c11e5a3a4d17e738c8c35502fc618af0b702d25f348be7528478bdb08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18663d71-27d5-7bd1-e7ea-58dee6a0679c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diophPfun_comp1 {S : Set (Option α → ℕ)} (d : Dioph S) {f} (df : DiophPfun f) :
    Dioph {v : α → ℕ | ∃ h : f.Dom v, f.fn v h ::ₒ v ∈ S} :=
  ext (ex1_dioph (d.inter df)) fun v =>
    ⟨fun ⟨x, hS, (h : Exists _)⟩ => by
      rw [show (x ::ₒ v) ∘ some = v from funext fun s => rfl] at h;
        cases' h with hf h; refine' ⟨hf, _⟩; rw [PFun.fn, h]; exact hS,
    fun ⟨x, hS⟩ =>
      ⟨f.fn v x, hS, show Exists _ by
        rw [show (f.fn v x ::ₒ v) ∘ some = v from funext fun s => rfl]; exact ⟨x, rfl⟩⟩⟩
#align dioph.dioph_pfun_comp1 Dioph.diophPfun_comp1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variantb00ade6c11e5a3a4d17e738c8c35502fc618af0b702d25f348be7528478bdb08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variantb00ade6c11e5a3a4d17e738c8c35502fc618af0b702d25f348be7528478bdb08.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f71afed2b47ebfcc74931ab6af18f84857689f78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
