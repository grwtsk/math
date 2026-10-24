# hasDerivAt_log_LFunction_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cb0df70-d2da-4674-fbfe-7d227b86689d",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_log_LFunction_two",
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
  "slug": "hasderivat-log-lfunction-two--7e084492f0c2363b2f163365",
  "source": {
    "blob": "07d5bcacede31f7967ba4ba5a412b8f32dd72556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 317,
    "path": "GRWTSK/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e084492f0c2363b2f163365846c20d8d27880aea7f008b19aa46ea589d277f6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cb0df70-d2da-4674-fbfe-7d227b86689d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivAt_log_LFunction_two (hχ1 : χ ≠ 1) (t : ℝ) :
    HasDerivAt (fun t : ℝ => Complex.log (χ.LFunction (2 + t * I)))
      (logDeriv χ.LFunction (2 + t * I) * I) t := by
  have hζ : HasDerivAt χ.LFunction (deriv χ.LFunction (2 + t * I)) (2 + t * I) :=
    ((DirichletCharacter.differentiable_LFunction hχ1) _).hasDerivAt
  have hγ : HasDerivAt (fun t : ℝ => (2 : ℂ) + t * I) I t := by
    have h1 : HasDerivAt (fun t : ℝ => (t : ℂ)) 1 t := Complex.ofRealCLM.hasDerivAt
    simpa using (h1.mul_const I).const_add (2 : ℂ)
  have hcomp : HasDerivAt (fun t : ℝ => χ.LFunction (2 + t * I)) (deriv χ.LFunction (2 + t * I) * I) t :=
    hζ.comp t hγ
  have hlog : HasDerivAt Complex.log (χ.LFunction (2 + t * I))⁻¹ (χ.LFunction (2 + t * I)) :=
    Complex.hasDerivAt_log (Or.inl (re_LFunction_two_pos t))
  have h := hlog.comp t hcomp
  have e : (χ.LFunction (2 + t * I))⁻¹ * (deriv χ.LFunction (2 + t * I) * I)
      = logDeriv χ.LFunction (2 + t * I) * I := by
    rw [logDeriv_apply]; ring
  rw [e] at h
  exact h

/-- Continuity of `t ↦ ζ'/ζ(2+it)·i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BacklundChi/Variant25f8bee28c0f94d9eb3b9d032367bd83a82c4597f70716ec4bf1963e178208b4.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07d5bcacede31f7967ba4ba5a412b8f32dd72556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
