# LawfulOrderInf.of_ord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2a4fbfa-cafe-50cf-7bc5-4a218a7c63db",
  "kind": "theorem",
  "lexical_name": "LawfulOrderInf.of_ord",
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
  "slug": "lawfulorderinf-of-ord--5a5cde3360684aae0085fb15",
  "source": {
    "blob": "58e57bc20ad0391d0c2d31836aae291d05cce94b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasExtra/Variant91fbd3c715a489af06f4624e8378f7503ef9aed1cbdf494b0cc10f7ad9b4cc8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a5cde3360684aae0085fb15a3a97dc6b16f0c3d31e5245b9566e65bd14acfd7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasExtra/Variant91fbd3c715a489af06f4624e8378f7503ef9aed1cbdf494b0cc10f7ad9b4cc8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2a4fbfa-cafe-50cf-7bc5-4a218a7c63db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem LawfulOrderInf.of_ord (α : Type u) [Ord α] [Min α] [LE α] [LawfulOrderOrd α]
    (compare_min_isLE_iff : ∀ a b c : α,
        (compare a (min b c)).isLE ↔ (compare a b).isLE ∧ (compare a c).isLE) :
    LawfulOrderInf α where
  le_min_iff := by simpa [isLE_compare] using compare_min_isLE_iff

/--
This lemma derives a `LawfulOrderMin α` instance from a property involving an `Ord α` instance.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasExtra/Variant91fbd3c715a489af06f4624e8378f7503ef9aed1cbdf494b0cc10f7ad9b4cc8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LemmasExtra/Variant91fbd3c715a489af06f4624e8378f7503ef9aed1cbdf494b0cc10f7ad9b4cc8e.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58e57bc20ad0391d0c2d31836aae291d05cce94b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
