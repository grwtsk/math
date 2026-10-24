# CoeffMoments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bf97d5def7445aa356e05941864f36e7cbac6c7596232d8567f1304bba65843",
  "kind": "def",
  "lexical_name": "CoeffMoments",
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
  "slug": "coeffmoments--d563b3b2b68bc1fd732c7d99",
  "source": {
    "blob": "b1339c09f5e7b9f07de9a533850183e905d8c138",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 236,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d563b3b2b68bc1fd732c7d99693be211a0cf168058e12ce2661a64a1f94590a9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bf97d5def7445aa356e05941864f36e7cbac6c7596232d8567f1304bba65843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CoeffMoments (Z : ZeroConfig) (Pf : ℝ → Params) (F : CoeffFamily) (κ : ℝ) : Prop :=
  (∀ δ : ℝ, 0 < δ → ∀ᶠ T in atTop,
    (1 - δ) * (Z.N T (2 * T) : ℝ) ≤ rtrace ((Pf T).hat T ((Pf T).GpC T (F.c T))) ∧
    rtrace ((Pf T).hat T ((Pf T).GpC T (F.c T))) ≤ (1 + δ) * (Z.N T (2 * T) : ℝ)) ∧
  (∀ δ : ℝ, 0 < δ → ∀ᶠ T in atTop,
    frobSq ((Pf T).hat T ((Pf T).GpC T (F.c T))) ≤ (κ + δ) * (Z.N T (2 * T) : ℝ))

/-- **GzMoments — the seam consumed by the certificate** (Assembly composes XiEF + XiTraceTransfer +
CoeffMoments into this; it is literally the pair (htrace, hfrob) of Zeta23.Assembly.count_certificate /
count_certificate_c3 with κ in place of Zeta23.kfun λ):  (1−δ)N ≤ tr Ĝ¹  and  ‖Ĝ¹‖_F² ≤ (κ+δ)N  eventually. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1339c09f5e7b9f07de9a533850183e905d8c138` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
