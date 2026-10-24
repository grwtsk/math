# dual_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7dd309cac8ed92c45e3c3d67d710a626c4009b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 543,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4674800e-448f-3dbb-2412-4687e62a4795",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00c5643c-dace-b7e7-7229-ace395ec8bcf",
  "kind": "theorem",
  "lexical_name": "dual_apply",
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
  "slug": "dual-apply--baf39b13e811f69ab6cddc4c",
  "source": {
    "blob": "f7dd309cac8ed92c45e3c3d67d710a626c4009b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 543,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baf39b13e811f69ab6cddc4c632aa233a14646baeaf78f89096254791a57ea34",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00c5643c-dace-b7e7-7229-ace395ec8bcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 543–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dual_apply (g : G) : (dual ρV) g = Module.Dual.transpose (R := k) (ρV g⁻¹) :=
  rfl

/-- Given $k$-modules $V, W$, there is a homomorphism $φ : V^* ⊗ W → Hom_k(V, W)$
(implemented by `dualTensorHom` in `Mathlib/LinearAlgebra/Contraction.lean`).
Given representations of $G$ on $V$ and $W$,there are representations of $G$ on $V^* ⊗ W$ and on
$Hom_k(V, W)$.
This lemma says that $φ$ is $G$-linear.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean#L543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7dd309cac8ed92c45e3c3d67d710a626c4009b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
