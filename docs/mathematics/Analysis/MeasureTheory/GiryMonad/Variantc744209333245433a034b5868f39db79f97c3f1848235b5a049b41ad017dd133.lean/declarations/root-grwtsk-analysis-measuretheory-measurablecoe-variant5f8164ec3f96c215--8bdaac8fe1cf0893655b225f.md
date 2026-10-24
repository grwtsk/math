# _root_.GRWTSK.Analysis.MeasureTheory.MeasurableCoe.Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.AEMeasurable.ae_of_bind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6450f9b-aef4-7f63-9db5-97c124d18260",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCoe.Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.AEMeasurable.ae_of_bind",
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
  "slug": "root-grwtsk-analysis-measuretheory-measurablecoe-variant5f8164ec3f96c215--8bdaac8fe1cf0893655b225f",
  "source": {
    "blob": "9c230e4d87d49bfbc2e71cae42c80c44843fea70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 237,
    "path": "GRWTSK/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bdaac8fe1cf0893655b225f1b78f84d5d080ece9e1ab923f93da894c1dcaec2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6450f9b-aef4-7f63-9db5-97c124d18260`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableCoe.Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.AEMeasurable.ae_of_bind {γ : Type*} {_ : MeasurableSpace γ} {m : Measure α}
    {f : α → Measure β} {g : β → γ} (hf : AEMeasurable f m) (hg : AEMeasurable g (m.bind f)) :
    ∀ᵐ a ∂m, AEMeasurable g (f a) :=
  ae_of_ae_map hf hg.ae_of_join

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/GiryMonad/Variantc744209333245433a034b5868f39db79f97c3f1848235b5a049b41ad017dd133.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c230e4d87d49bfbc2e71cae42c80c44843fea70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
