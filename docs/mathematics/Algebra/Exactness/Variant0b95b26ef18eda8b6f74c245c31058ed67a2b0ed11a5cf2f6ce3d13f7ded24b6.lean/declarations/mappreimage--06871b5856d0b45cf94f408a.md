# mapPreimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71a3a77c1c6364b292feedb2283c1425876b3062e51b4575e49cf66464ed839a",
  "kind": "def",
  "lexical_name": "mapPreimage",
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
  "slug": "mappreimage--06871b5856d0b45cf94f408a",
  "source": {
    "blob": "3062c321422175572253670a12866265db3a0d34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 64,
    "path": "GRWTSK/Algebra/Exactness/Variant0b95b26ef18eda8b6f74c245c31058ed67a2b0ed11a5cf2f6ce3d13f7ded24b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06871b5856d0b45cf94f408ae980475b742c504a592fccec36a2ff96a267b9d9",
  "verification": {
    "reference": "docs/verification/Algebra/Exactness/Variant0b95b26ef18eda8b6f74c245c31058ed67a2b0ed11a5cf2f6ce3d13f7ded24b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71a3a77c1c6364b292feedb2283c1425876b3062e51b4575e49cf66464ed839a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private noncomputable def mapPreimage (hf : Function.Surjective f) (x : AdicCauchySequence I N) :
    (n : ℕ) → f ⁻¹' {x n}
  | .zero => ⟨(hf (x 0)).choose, (hf (x 0)).choose_spec⟩
  | .succ n =>
      let y := (hf (x (n + 1))).choose
      have hy := (hf (x (n + 1))).choose_spec
      let ⟨yₙ, (hyₙ : f yₙ = x n)⟩ := mapPreimage hf x n
      let ⟨⟨d, _⟩, (p : f d = f (yₙ - y))⟩ := mapPreimageDelta hf x hy hyₙ
      ⟨yₙ - d, by simpa [p]⟩

variable (I) in
/-- Adic completion preserves surjectivity -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Exactness/Variant0b95b26ef18eda8b6f74c245c31058ed67a2b0ed11a5cf2f6ce3d13f7ded24b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Exactness/Variant0b95b26ef18eda8b6f74c245c31058ed67a2b0ed11a5cf2f6ce3d13f7ded24b6.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3062c321422175572253670a12866265db3a0d34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
