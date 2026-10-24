# xi_derivative_center_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63d0a1db-c784-9bcb-0d6c-5976b24636bf",
  "kind": "theorem",
  "lexical_name": "xi_derivative_center_real",
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
  "slug": "xi-derivative-center-real--15ed7f81c9823468ea6850f5",
  "source": {
    "blob": "4831fdc3947eb8752c9b84c31cc345e5a4599d6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 88,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15ed7f81c9823468ea6850f5b3972cb07bf1d13d8803f5fdbf4dc4ecfc951ec1",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63d0a1db-c784-9bcb-0d6c-5976b24636bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_derivative_center_real (n : ℕ) : (iteratedDeriv n xi (1 / 2)).im = 0 := by
  have hf : conj ∘ xi ∘ conj = xi := by
    funext z
    simp [Function.comp_apply, xi_conjugation]
  have he := congrFun (iteratedDeriv_conjugate_function xi n) (1 / 2)
  rw [hf] at he
  have hi := congrArg Complex.im he
  simp [Function.comp_apply] at hi
  linarith

/-- Odd Taylor derivatives vanish by the functional equation, not by definition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variantcc344e3cc7036f14db5c8940f284951b7c090481b037d055ffb90008ecb3446c.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4831fdc3947eb8752c9b84c31cc345e5a4599d6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
