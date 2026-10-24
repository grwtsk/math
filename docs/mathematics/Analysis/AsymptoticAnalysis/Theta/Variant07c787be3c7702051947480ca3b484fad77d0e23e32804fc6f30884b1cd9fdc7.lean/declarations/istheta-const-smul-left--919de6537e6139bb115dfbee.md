# isTheta_const_smul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:431c4a41-3442-6dd7-4069-07fd22f4244d",
  "kind": "theorem",
  "lexical_name": "isTheta_const_smul_left",
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
  "slug": "istheta-const-smul-left--919de6537e6139bb115dfbee",
  "source": {
    "blob": "e89c35a8802b91dc9f3598fbd3a3d7e1630ff725",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 250,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Theta/Variant07c787be3c7702051947480ca3b484fad77d0e23e32804fc6f30884b1cd9fdc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:919de6537e6139bb115dfbeef48ad805b8701fab73bdeca23ca9f55d856fdcf6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Theta/Variant07c787be3c7702051947480ca3b484fad77d0e23e32804fc6f30884b1cd9fdc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:431c4a41-3442-6dd7-4069-07fd22f4244d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTheta_const_smul_left [NormedSpace 𝕜 E'] {c : 𝕜} (hc : c ≠ 0) :
    (fun x ↦ c • f' x) =Θ[l] g ↔ f' =Θ[l] g :=
  and_congr (isBigO_const_smul_left hc) (isBigO_const_smul_right hc)

alias ⟨IsTheta.of_const_smul_left, IsTheta.const_smul_left⟩ := isTheta_const_smul_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Theta/Variant07c787be3c7702051947480ca3b484fad77d0e23e32804fc6f30884b1cd9fdc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Theta/Variant07c787be3c7702051947480ca3b484fad77d0e23e32804fc6f30884b1cd9fdc7.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e89c35a8802b91dc9f3598fbd3a3d7e1630ff725` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
