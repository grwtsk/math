# ofNat_le_ofNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab4bacfe-ec25-e624-d46f-b4b81b5bd4ad",
  "kind": "theorem",
  "lexical_name": "ofNat_le_ofNat",
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
  "slug": "ofnat-le-ofnat--8c75406138f38c0daa05ba58",
  "source": {
    "blob": "d71c16824482d9ecc5903efb54fb3a47b203c620",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbf8c5c6d67458b79e2639ef6cf984e14c9353ad41a7717a740c04867b0b3526b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c75406138f38c0daa05ba58028231347049e535657b511b8ce79bbeffc7d7aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbf8c5c6d67458b79e2639ef6cf984e14c9353ad41a7717a740c04867b0b3526b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab4bacfe-ec25-e624-d46f-b4b81b5bd4ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofNat_le_ofNat {n m : Nat} (h : n ≤ m) : ofNat n ≤ ofNat m := by
  simp only [ofNat, ne_eq, _root_.decide_not]
  cases Nat.decEq n 0 with
  | isTrue hn => rw [_root_.decide_eq_true hn]; exact Bool.false_le _
  | isFalse hn =>
    cases Nat.decEq m 0 with
    | isFalse hm => rw [_root_.decide_eq_false hm]; exact Bool.le_true _
    | isTrue hm => subst hm; have h := Nat.le_antisymm h (Nat.zero_le n); contradiction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbf8c5c6d67458b79e2639ef6cf984e14c9353ad41a7717a740c04867b0b3526b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbf8c5c6d67458b79e2639ef6cf984e14c9353ad41a7717a740c04867b0b3526b.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d71c16824482d9ecc5903efb54fb3a47b203c620` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
