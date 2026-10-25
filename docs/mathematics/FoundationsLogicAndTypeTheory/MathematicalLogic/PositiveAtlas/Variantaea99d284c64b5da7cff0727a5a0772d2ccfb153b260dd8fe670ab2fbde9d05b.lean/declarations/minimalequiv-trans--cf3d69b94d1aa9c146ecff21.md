# minimalEquiv_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:887ba830-afb5-f524-2737-10db164e1acd",
  "kind": "theorem",
  "lexical_name": "minimalEquiv_trans",
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
  "slug": "minimalequiv-trans--cf3d69b94d1aa9c146ecff21",
  "source": {
    "blob": "b42820c11d82506616c5ec37f067922374822d53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 200,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variantaea99d284c64b5da7cff0727a5a0772d2ccfb153b260dd8fe670ab2fbde9d05b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf3d69b94d1aa9c146ecff21d4dbc2ae191cce595e6b731405bd66914b407e66",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variantaea99d284c64b5da7cff0727a5a0772d2ccfb153b260dd8fe670ab2fbde9d05b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:887ba830-afb5-f524-2737-10db164e1acd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimalEquiv_trans
    (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C)
    (t : SufficientRepresentation.{u, v, w, c} C)
    (hqr : IsMinimal.{u, v, w, a, b} q)
    (hqt : IsMinimal.{u, v, w, a, c} q)
    (hrq : IsMinimal.{u, v, w, b, a} r)
    (hrt : IsMinimal.{u, v, w, b, c} r)
    (htq : IsMinimal.{u, v, w, c, a} t)
    (htr : IsMinimal.{u, v, w, c, b} t)
    (sq : Function.Surjective q.compress)
    (sr : Function.Surjective r.compress)
    (st : Function.Surjective t.compress) :
    (minimalEquiv q r hqr hrq sq sr).trans (minimalEquiv r t hrt htr sr st) =
      minimalEquiv q t hqt htq sq st := by
  apply minimalEquiv_unique
  intro s
  simp only [Equiv.trans_apply, minimalEquiv_compress]

end SufficientRepresentation

namespace StructuralQuine

variable {State : Type u} {Index : Type v}
variable {C : CertificateFamily.{u, v, w} State Index}

/-- The section gives every carrier element an actual state antecedent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variantaea99d284c64b5da7cff0727a5a0772d2ccfb153b260dd8fe670ab2fbde9d05b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PositiveAtlas/Variantaea99d284c64b5da7cff0727a5a0772d2ccfb153b260dd8fe670ab2fbde9d05b.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b42820c11d82506616c5ec37f067922374822d53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
