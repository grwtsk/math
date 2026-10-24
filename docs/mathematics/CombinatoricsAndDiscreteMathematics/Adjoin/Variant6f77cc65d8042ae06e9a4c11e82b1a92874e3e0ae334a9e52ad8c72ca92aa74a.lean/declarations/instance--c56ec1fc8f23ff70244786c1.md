# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bac125c7c8a9de70dee5abd01f6a4e0f7ee2347fc70f8cfdf2677a3d2034861b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c56ec1fc8f23ff70244786c1",
  "source": {
    "blob": "c3706b8a02530204e89d7161d83deebb527a9cba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1006,
    "line": 995,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c56ec1fc8f23ff70244786c1b39431af1a75c8e076bce71ef00b31998500b528",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bac125c7c8a9de70dee5abd01f6a4e0f7ee2347fc70f8cfdf2677a3d2034861b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 995–1006.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : PartialOrder (Lifts F E K) where
  le x y := x.1 ≤ y.1 ∧ ∀ (s : x.1) (t : y.1), (s : E) = t → x.2 s = y.2 t
  le_refl x := ⟨le_refl x.1, fun s t hst => congr_arg x.2 (Subtype.ext hst)⟩
  le_trans x y z hxy hyz :=
    ⟨le_trans hxy.1 hyz.1, fun s u hsu =>
      Eq.trans (hxy.2 s ⟨s, hxy.1 s.mem⟩ rfl) (hyz.2 ⟨s, hxy.1 s.mem⟩ u hsu)⟩
  le_antisymm := by
    rintro ⟨x1, x2⟩ ⟨y1, y2⟩ ⟨hxy1, hxy2⟩ ⟨hyx1, hyx2⟩
    obtain rfl : x1 = y1 := le_antisymm hxy1 hyx1
    congr
    exact AlgHom.ext fun s => hxy2 s s rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean#L995).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3706b8a02530204e89d7161d83deebb527a9cba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
