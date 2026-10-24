# Ordered.del

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3c5a338-602c-93e2-0493-bf0258bf0982",
  "kind": "theorem",
  "lexical_name": "Ordered.del",
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
  "slug": "ordered-del--328b84c0512be5a23dbe1062",
  "source": {
    "blob": "c40de296434223504dbfbfdd5f0aed5e80139d74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 327,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantac3e7d5200199d9758c8bec76e657631d208194a6731356f68657cc572ff2935.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:328b84c0512be5a23dbe10629f77dfedfcf8557e937f285c875b6b06356b7804",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantac3e7d5200199d9758c8bec76e657631d208194a6731356f68657cc572ff2935.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3c5a338-602c-93e2-0493-bf0258bf0982`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ordered.del : ∀ {path : Path α} {t : RBNode α} {c},
    t.Ordered cmp → path.Ordered cmp → t.All (path.RootOrdered cmp) → (path.del t c).Ordered cmp
  | .root, t, _, ht, _, _ => Ordered.setBlack.2 ht
  | .left _ parent x b, a, red, ha, ⟨hp, xb, xp, bp, hb⟩, H => by
    unfold del; have ⟨ax, ap⟩ := All_and.1 H; exact hp.del ⟨ax, xb, ha, hb⟩ ⟨xp, ap, bp⟩
  | .right _ a x parent, b, red, hb, ⟨hp, ax, xp, ap, ha⟩, H => by
    unfold del; have ⟨xb, bp⟩ := All_and.1 H; exact hp.del ⟨ax, xb, ha, hb⟩ ⟨xp, ap, bp⟩
  | .left _ parent x b, a, black, ha, ⟨hp, xb, xp, bp, hb⟩, H => by
    unfold del; have ⟨ax, ap⟩ := All_and.1 H
    exact hp.del (ha.balLeft ax xb hb) (ap.balLeft xp bp)
  | .right _ a x parent, b, black, hb, ⟨hp, ax, xp, ap, ha⟩, H => by
    unfold del; have ⟨xb, bp⟩ := All_and.1 H
    exact hp.del (ha.balRight ax xb hb) (ap.balRight xp bp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantac3e7d5200199d9758c8bec76e657631d208194a6731356f68657cc572ff2935.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantac3e7d5200199d9758c8bec76e657631d208194a6731356f68657cc572ff2935.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c40de296434223504dbfbfdd5f0aed5e80139d74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
