# _root_.GRWTSK.Algebra.GaloisPolySeparable.Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.FiniteField.isSplittingField_of_nat_card_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cda1cd0b-cbba-6096-2e84-26c4d1221a1c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GaloisPolySeparable.Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.FiniteField.isSplittingField_of_nat_card_eq",
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
  "slug": "root-grwtsk-algebra-galoispolyseparable-varianta3bfff74ac408ce3721653619--3a914fcb6943da4ef72e54b3",
  "source": {
    "blob": "68033f3da6a40fd4478032c5b67a5700e34749f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 205,
    "path": "GRWTSK/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a914fcb6943da4ef72e54b39b575885181cadb6855feff542c16e4a5a4dc473",
  "verification": {
    "reference": "docs/verification/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cda1cd0b-cbba-6096-2e84-26c4d1221a1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GaloisPolySeparable.Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.FiniteField.isSplittingField_of_nat_card_eq (h : Nat.card K = p ^ n) :
    IsSplittingField (ZMod p) K (X ^ p ^ n - X) := by
  haveI : Finite K := (Nat.card_pos_iff.mp (h ▸ pow_pos h_prime.1.pos n)).2
  haveI : Fintype K := Fintype.ofFinite K
  rw [← h, Nat.card_eq_fintype_card]
  exact FiniteField.isSplittingField_sub K (ZMod p)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaloisField/Variant5211b2099ff6468503281ab60361388caf8ffdea5dbaf3b11110a72e5cc99f88.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68033f3da6a40fd4478032c5b67a5700e34749f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
