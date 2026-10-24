# logDerivZeta_conj'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5d24676-9afd-06fa-6823-c86fcd501870",
  "kind": "theorem",
  "lexical_name": "logDerivZeta_conj'",
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
  "slug": "logderivzeta-conj--90496766cbd73b6ed4cf10ef",
  "source": {
    "blob": "7cf0dc9a7c8bd92c9bd8a7a8920b342d621c0bb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90496766cbd73b6ed4cf10efb60858d44585b9a3f1eceebcdbcb7f526168350a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5d24676-9afd-06fa-6823-c86fcd501870`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDerivZeta_conj' (s : ℂ) :
    (logDeriv riemannZeta) (conj s) = conj (logDeriv riemannZeta s) := logDerivZeta_conj s

blueprint_comment /--
% TODO: Submit this to Mathlib.
-/
set_option backward.isDefEq.respectTransparency false in
@[blueprint
  (title := "intervalIntegral-conj")
  (statement := /--
    The conjugation symmetry of the interval integral. Let $f : \mathbb{R} \to \mathbb{C}$ be a
    measurable function, and let $a, b \in \mathbb{R}$. Then
    $$\int_{a}^{b} \overline{f(x)} \, dx = \overline{\int_{a}^{b} f(x) \, dx}.$$
  -/)
  (proof := /--
    We unfold the interval integral into an integral over a uIoc and use the conjugation property
    of integrals.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cf0dc9a7c8bd92c9bd8a7a8920b342d621c0bb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
