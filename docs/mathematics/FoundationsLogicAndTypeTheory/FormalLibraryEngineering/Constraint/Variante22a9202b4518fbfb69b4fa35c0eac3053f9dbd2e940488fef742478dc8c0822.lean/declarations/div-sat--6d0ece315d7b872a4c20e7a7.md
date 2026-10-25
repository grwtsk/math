# div_sat'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1deb5d38-8ac9-f5d4-e705-e5d814ea9634",
  "kind": "theorem",
  "lexical_name": "div_sat'",
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
  "slug": "div-sat--6d0ece315d7b872a4c20e7a7",
  "source": {
    "blob": "6979c80efbf0260eeb20d9c2c0cf451085306d90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 253,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constraint/Variante22a9202b4518fbfb69b4fa35c0eac3053f9dbd2e940488fef742478dc8c0822.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d0ece315d7b872a4c20e7a727a57f1b1aa4ad518294f027cd2b56d85cf48584",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constraint/Variante22a9202b4518fbfb69b4fa35c0eac3053f9dbd2e940488fef742478dc8c0822.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1deb5d38-8ac9-f5d4-e705-e5d814ea9634`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_sat' {c : Constraint} {x y} (h : Coeffs.gcd x ≠ 0) (w : c.sat (Coeffs.dot x y)) :
    (c.div (Coeffs.gcd x)).sat' (Coeffs.sdiv x (Coeffs.gcd x)) y := by
  dsimp [sat']
  rw [Coeffs.dot_sdiv_left _ _ (Int.dvd_refl _)]
  exact div_sat c _ (Coeffs.gcd x) h (Coeffs.gcd_dvd_dot_left x y) w

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constraint/Variante22a9202b4518fbfb69b4fa35c0eac3053f9dbd2e940488fef742478dc8c0822.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constraint/Variante22a9202b4518fbfb69b4fa35c0eac3053f9dbd2e940488fef742478dc8c0822.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6979c80efbf0260eeb20d9c2c0cf451085306d90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
