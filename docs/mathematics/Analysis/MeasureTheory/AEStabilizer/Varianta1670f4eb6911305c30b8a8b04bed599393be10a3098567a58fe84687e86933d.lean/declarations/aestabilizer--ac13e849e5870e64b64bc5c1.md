# aestabilizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f711162b11c6a71cadd2f9ac97956d70b78e778427735758e8ecae50fbcb9699",
  "kind": "def",
  "lexical_name": "aestabilizer",
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
  "slug": "aestabilizer--ac13e849e5870e64b64bc5c1",
  "source": {
    "blob": "5f3920d2a36abe12f3f113ec3704ac71e21b130b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 40,
    "path": "GRWTSK/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac13e849e5870e64b64bc5c1f21dcc751f33e6db1b6b12348aca89ae9f9baef4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f711162b11c6a71cadd2f9ac97956d70b78e778427735758e8ecae50fbcb9699`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def aestabilizer (s : Set α) : Subgroup G where
  carrier := {g | g • s =ᵐ[μ] s}
  one_mem' := by simp
  -- TODO: `calc` would be more readable but fails because of defeq abuse
  mul_mem' {g₁ g₂} h₁ h₂ := by simpa only [smul_smul] using ((smul_set_ae_eq g₁).2 h₂).trans h₁
  inv_mem' {g} h := by simpa using (smul_set_ae_eq g⁻¹).2 h.out.symm

variable {G μ}
variable {g : G} {s t : Set α}

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f3920d2a36abe12f3f113ec3704ac71e21b130b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
