# inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80cd43fbd648bcfc35692d623ab55c9dd5f1948b4259eb1e90e81fc64b777421",
  "kind": "def",
  "lexical_name": "inv",
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
  "slug": "inv--da80508e9e37edb56bdadc79",
  "source": {
    "blob": "78cee56c17c6fec54af0c6b06992ae39ae350b14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 907,
    "line": 891,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da80508e9e37edb56bdadc795fb30fa68713f44ca20c16e6a312d2f2d3935adb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80cd43fbd648bcfc35692d623ab55c9dd5f1948b4259eb1e90e81fc64b777421`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 891–907.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def inv : R[R⁰⁻¹] → R[R⁰⁻¹] :=
  liftExpand
    (fun r s =>
      if hr : r = (0 : R) then (0 : R[R⁰⁻¹])
      else s /ₒ ⟨r, fun _ => eq_zero_of_ne_zero_of_mul_right_eq_zero hr⟩)
    (by
      intro r t s hst
      by_cases hr : r = 0
      · simp [hr]
      · by_cases ht : t = 0
        · exfalso
          apply nonZeroDivisors.coe_ne_zero ⟨_, hst⟩
          simp [ht, mul_zero]
        · simp only [hr, ht, dif_neg, not_false_iff, or_self_iff, mul_eq_zero]
          apply OreLocalization.expand)
#align ore_localization.inv OreLocalization.inv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean#L891).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78cee56c17c6fec54af0c6b06992ae39ae350b14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
