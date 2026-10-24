# endpoint_Y_partial1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f9b190d-6bee-c857-d901-3b06c51fdb7e",
  "kind": "theorem",
  "lexical_name": "endpoint_Y_partial1",
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
  "slug": "endpoint-y-partial1--0fa184191559eab828ce7fbb",
  "source": {
    "blob": "61a6543767c7372be2b9fad21ec83b11dd2975c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 129,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fa184191559eab828ce7fbb9441c26a711b5a65dad0805f683444a264a63c30",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f9b190d-6bee-c857-d901-3b06c51fdb7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_Y_partial1 (c₁ c₂ c₃ τ₁ τ₂ τ₃ : ℝ) (x : Point) :
    HasDerivAt (fun u => (endpoint c₁ c₂ c₃ u τ₂ τ₃ x).2.2)
      ((c₂-c₁)*(τ₃-2*τ₁)) τ₁ := by
  simp only [endpoint_formula]
  convert ((hasDerivAt_const τ₁
    (x.2.2+(c₁*x.1-x.2.1)*(τ₃-x.1))).add
    (((hasDerivAt_id τ₁).const_mul (c₂-c₁)).mul
      ((hasDerivAt_const τ₁ τ₃).sub (hasDerivAt_id τ₁)))).add
      (hasDerivAt_const τ₁ ((c₃-c₂)*τ₂*(τ₃-τ₂))) using 1 <;> dsimp <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61a6543767c7372be2b9fad21ec83b11dd2975c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
