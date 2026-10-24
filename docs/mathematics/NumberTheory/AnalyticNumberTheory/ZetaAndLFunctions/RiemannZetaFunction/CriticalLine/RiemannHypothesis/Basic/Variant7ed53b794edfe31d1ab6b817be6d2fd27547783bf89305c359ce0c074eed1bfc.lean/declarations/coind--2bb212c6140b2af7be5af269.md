# coind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a2b988e28b95160b402d90ce18f81f17dcdae21bd42e760016ca703ee375cd2",
  "kind": "def",
  "lexical_name": "coind",
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
  "slug": "coind--2bb212c6140b2af7be5af269",
  "source": {
    "blob": "0a8066dbbf608f5877b3269aff83a5e7965f4118",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 550,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant7ed53b794edfe31d1ab6b817be6d2fd27547783bf89305c359ce0c074eed1bfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2bb212c6140b2af7be5af2694ff5c16a6fe85e8d1a82bee5ebad19762db8847e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant7ed53b794edfe31d1ab6b817be6d2fd27547783bf89305c359ce0c074eed1bfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a2b988e28b95160b402d90ce18f81f17dcdae21bd42e760016ca703ee375cd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coind (π : ContRepresentation R G V) : ContRepresentation R H (π.coindV φ) where
  toMonoidHom.toFun h := {
    toFun | ⟨f, hf⟩ => ⟨f.comp (ContinuousMap.mulRight h), by simp [mul_assoc, hf _]⟩
    map_add' _ _ := by simp
    map_smul' _ _ := by simp
    cont := continuous_induced_rng.2 <| by
      simpa using! (ContinuousMap.mulRight h).continuous_precomp.comp continuous_subtype_val}
  toMonoidHom.map_one' := by ext; simp
  toMonoidHom.map_mul' h1 h2 := by ext; simp [ContinuousMap.mulRight_mul]

open ContinuousMap

/-- Given a continuous representation `π` of `G` on `V`,
this defines a Continuous representation `π.coind₁` of `G` on the function space `C(G,V)`.
The action of an element `g : G` is defined by `f ↦ (x ↦ π g (f (g⁻¹ * x)))`.
This new representation of `G` is isomorphic to the continuous coinduction
of the trivial representation of the trivial subgroup of `G`, but the action has been
twisted so that the map `const : V → C(G,V)` is an intertwining map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant7ed53b794edfe31d1ab6b817be6d2fd27547783bf89305c359ce0c074eed1bfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant7ed53b794edfe31d1ab6b817be6d2fd27547783bf89305c359ce0c074eed1bfc.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a8066dbbf608f5877b3269aff83a5e7965f4118` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
