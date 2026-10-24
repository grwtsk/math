# sacCount_conjugate_hammingIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a8d0ee5-7f6f-4a43-8a86-ea800cd0b77d",
  "kind": "theorem",
  "lexical_name": "sacCount_conjugate_hammingIso",
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
  "slug": "saccount-conjugate-hammingiso--6abe321b1166474ae34b5480",
  "source": {
    "blob": "939839c3e9609bb3d0795c633e28ae2b2098cbad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 286,
    "path": "GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6abe321b1166474ae34b54804ddb5c77c31dcf019b5710a7d6bd1f586712ae52",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a8d0ee5-7f6f-4a43-8a86-ea800cd0b77d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sacCount_conjugate_hammingIso {n : Nat}
    (g : HammingIso n)
    (H : BitPerm n)
    (i j : Fin n) :
    sacCount (conjugate g.toPerm H) i j =
      sacCount H (g.coordinates.symm i) (g.coordinates.symm j) := by
  classical
  unfold sacCount
  apply Finset.card_equiv g.toPerm.symm
  intro x
  simp only [Finset.mem_filter, Finset.mem_univ, true_and]
  rw [derivativeBit_conjugate_hammingIso]

/-- Strict SAC is invariant under explicit Hamming-isometric conjugacy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `939839c3e9609bb3d0795c633e28ae2b2098cbad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
