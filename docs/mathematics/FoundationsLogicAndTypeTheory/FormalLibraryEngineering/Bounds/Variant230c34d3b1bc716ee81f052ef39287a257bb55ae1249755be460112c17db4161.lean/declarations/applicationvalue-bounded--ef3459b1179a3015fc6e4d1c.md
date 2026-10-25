# applicationValue_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c2bba22-ca5e-f2f2-e4ef-3c2814a6e92c",
  "kind": "theorem",
  "lexical_name": "applicationValue_bounded",
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
  "slug": "applicationvalue-bounded--ef3459b1179a3015fc6e4d1c",
  "source": {
    "blob": "43c4a4bb1826f14129576c945d1aa969da91a2dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 976,
    "line": 964,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant230c34d3b1bc716ee81f052ef39287a257bb55ae1249755be460112c17db4161.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef3459b1179a3015fc6e4d1c1790aa2b2e77b06b049fb57627fa7116588e7828",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant230c34d3b1bc716ee81f052ef39287a257bb55ae1249755be460112c17db4161.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c2bba22-ca5e-f2f2-e4ef-3c2814a6e92c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 964–976.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem applicationValue_bounded {f n D E : Expr S} (h : HasType P Γ (.app f n) T)
    (hf : HasType P Γ f (.pi D E)) (hn : HasType P Γ n D) (hc : Converts T (E.instantiate n))
    (ef : Evaluator (hw := hw) Ω C hno Γ f (.pi D E)) (en : Evaluator (hw := hw) Ω C hno Γ n D)
    {F N : Nat → Nat} (huf : Uniform Ω C hno ef F) (_hun : Uniform Ω C hno en N)
    (k : Nat) (e : Environment (hw := hw) Ω C hno Γ) (he : e.Bounded k)
    (ha : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm)) :
    RawValue.Bounded Ω C hno (appBound F N k) (applicationValue h hf hn hc ef en e ha).val := by
  dsimp only [applicationValue]
  split
  · apply RawValue.bounded_mono (m := appBound F N k) (n := F k) (by unfold appBound; omega)
    apply applyValue_bounded
    exact huf.val_bounded k e he _
  · exact RawValue.bounded_mono (by unfold appBound; omega) (distinguished_bounded Ω C hno _)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant230c34d3b1bc716ee81f052ef39287a257bb55ae1249755be460112c17db4161.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant230c34d3b1bc716ee81f052ef39287a257bb55ae1249755be460112c17db4161.lean#L964).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43c4a4bb1826f14129576c945d1aa969da91a2dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
