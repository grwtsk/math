# authority_non_promotion_for_gate_free_runs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef300fd7-4e2b-5a4e-8376-637212173508",
  "kind": "theorem",
  "lexical_name": "authority_non_promotion_for_gate_free_runs",
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
  "slug": "authority-non-promotion-for-gate-free-runs--d3c1cd5f03c811e415bf2190",
  "source": {
    "blob": "bb77655b082adb084658f485c5d37e6343d16bc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 293,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/M4b65726e656c2f417574686f72697479476174652e6c65616e/Variante14031f2863de5f5d6ae13db7a5f246e321c9d80b62c9b75bb78dfaac76dd41c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3c1cd5f03c811e415bf21904d1a4f9f9cbfc9568324f25965b70746c9a24ec4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/M4b65726e656c2f417574686f72697479476174652e6c65616e/Variante14031f2863de5f5d6ae13db7a5f246e321c9d80b62c9b75bb78dfaac76dd41c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef300fd7-4e2b-5a4e-8376-637212173508`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem authority_non_promotion_for_gate_free_runs
    (Γ : AuthorityContext) {x y : AuthoritySurface}
    (hRun : Γ.GateFreeRun x y)
    (hStart : ¬ x.mayForwardTheorem) :
    ¬ y.mayForwardTheorem := by
  induction hRun with
  | refl x =>
      exact hStart
  | @step x y z t hGate rest ih =>
      have hMid : ¬ y.mayForwardTheorem := by
        intro hY
        have hAllowed := t.admissible hY
        cases hAllowed with
        | inl hBefore =>
            exact hStart hBefore
        | inr hTheoremGate =>
            exact hGate hTheoremGate
      exact ih hMid

end Think.Kernel.AuthorityGate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/M4b65726e656c2f417574686f72697479476174652e6c65616e/Variante14031f2863de5f5d6ae13db7a5f246e321c9d80b62c9b75bb78dfaac76dd41c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/M4b65726e656c2f417574686f72697479476174652e6c65616e/Variante14031f2863de5f5d6ae13db7a5f246e321c9d80b62c9b75bb78dfaac76dd41c.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb77655b082adb084658f485c5d37e6343d16bc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
