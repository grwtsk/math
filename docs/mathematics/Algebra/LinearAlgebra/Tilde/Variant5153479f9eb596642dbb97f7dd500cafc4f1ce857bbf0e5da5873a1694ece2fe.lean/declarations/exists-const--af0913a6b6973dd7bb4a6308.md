# exists_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b29d895e-f4e3-94d7-7211-137302bb4bfc",
  "kind": "theorem",
  "lexical_name": "exists_const",
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
  "slug": "exists-const--af0913a6b6973dd7bb4a6308",
  "source": {
    "blob": "676cac9f85635e220480acd39f7281ebe0c16b14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 349,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tilde/Variant5153479f9eb596642dbb97f7dd500cafc4f1ce857bbf0e5da5873a1694ece2fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af0913a6b6973dd7bb4a63084b303ef908dcd87c49bba640a8051d3b0e64b3c9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tilde/Variant5153479f9eb596642dbb97f7dd500cafc4f1ce857bbf0e5da5873a1694ece2fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b29d895e-f4e3-94d7-7211-137302bb4bfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_const (U) (s : (tildeInModuleCat M).obj (op U)) (x : PrimeSpectrum.Top R)
    (hx : x ∈ U) :
    ∃ (V : Opens (PrimeSpectrum.Top R)) (_ : x ∈ V) (i : V ⟶ U) (f : M) (g : R) (hg : _),
      const M f g V hg = (tildeInModuleCat M).map i.op s :=
  let ⟨V, hxV, iVU, f, g, hfg⟩ := s.2 ⟨x, hx⟩
  ⟨V, hxV, iVU, f, g, fun y hyV => (hfg ⟨y, hyV⟩).1, Subtype.eq <| funext fun y => by
    obtain ⟨h1, (h2 : g • s.1 ⟨y, _⟩ = LocalizedModule.mk f 1)⟩ := hfg y
    exact show LocalizedModule.mk f ⟨g, by exact h1⟩ = s.1 (iVU y) by
      set x := s.1 (iVU y); change g • x = _ at h2; clear_value x
      induction x using LocalizedModule.induction_on with
      | h a b =>
        rw [LocalizedModule.smul'_mk, LocalizedModule.mk_eq] at h2
        obtain ⟨c, hc⟩ := h2
        exact LocalizedModule.mk_eq.mpr ⟨c, by simpa using hc.symm⟩⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tilde/Variant5153479f9eb596642dbb97f7dd500cafc4f1ce857bbf0e5da5873a1694ece2fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tilde/Variant5153479f9eb596642dbb97f7dd500cafc4f1ce857bbf0e5da5873a1694ece2fe.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `676cac9f85635e220480acd39f7281ebe0c16b14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
