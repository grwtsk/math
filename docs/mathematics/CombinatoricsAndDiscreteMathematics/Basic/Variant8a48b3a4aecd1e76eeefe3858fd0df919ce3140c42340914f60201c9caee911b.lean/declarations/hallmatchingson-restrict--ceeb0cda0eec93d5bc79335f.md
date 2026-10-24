# hallMatchingsOn.restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37ce414896cd03f2306b70629169c5c317152a0a58e706a7954ff6452864cf03",
  "kind": "def",
  "lexical_name": "hallMatchingsOn.restrict",
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
  "slug": "hallmatchingson-restrict--ceeb0cda0eec93d5bc79335f",
  "source": {
    "blob": "6ccde56b92dfd7af39fcedbe8d2a12ec795db85b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 63,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ceeb0cda0eec93d5bc79335fee0eeaf0672a1cc349b1aa409de7c13f65e12039",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37ce414896cd03f2306b70629169c5c317152a0a58e706a7954ff6452864cf03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hallMatchingsOn.restrict {ι : Type u} {α : Type v} (t : ι → Finset α) {ι' ι'' : Finset ι}
    (h : ι' ⊆ ι'') (f : hallMatchingsOn t ι'') : hallMatchingsOn t ι' := by
  refine ⟨fun i => f.val ⟨i, h i.property⟩, ?_⟩
  obtain ⟨hinj, hc⟩ := f.property
  refine ⟨?_, fun i => hc ⟨i, h i.property⟩⟩
  rintro ⟨i, hi⟩ ⟨j, hj⟩ hh
  simpa only [Subtype.mk_eq_mk] using hinj hh

/-- When the Hall condition is satisfied, the set of matchings on a finite set is nonempty.
This is where `Finset.all_card_le_biUnion_card_iff_existsInjective'` comes into the argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ccde56b92dfd7af39fcedbe8d2a12ec795db85b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
