# scanrM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf023ad43123b73450c1ab92502f54105fb7275af0ded091fc8444cdedd48bc8",
  "kind": "def",
  "lexical_name": "scanrM",
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
  "slug": "scanrm--27cc44fa2f30a20a26fd9a03",
  "source": {
    "blob": "97231746c799e53795db471232aebef9fc17642b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 339,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta7c7d2be03ed8f3519ee85066a273465dede4d21a3ad195e9102c4a1cc153d6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27cc44fa2f30a20a26fd9a03ebb92c9367854e32787ec0bda83d7640760a0655",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta7c7d2be03ed8f3519ee85066a273465dede4d21a3ad195e9102c4a1cc153d6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf023ad43123b73450c1ab92502f54105fb7275af0ded091fc8444cdedd48bc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def scanrM [Monad m]
    (f : α → β → m β) (init : β) (as : Array α) (start := as.size) (stop := 0) : m (Array β) :=
  let start := min start as.size
  loop f init as start stop (Nat.min_le_right _ _) #[]
where
  /-- auxiliary tail-recursive function for scanrM -/
  loop (f : α → β → m β) (init : β) (as : Array α)
       (start stop : Nat)
       (h_start : start ≤ as.size)
       (acc : Array β) :
       m (Array β) := do
    if h_gt : stop < start then
      let i := start - 1
      let next ← f as[i] init
      loop f next as i stop (by omega) (acc.push init)
    else
      pure <| acc.push init |>.reverse

/--
Fold a function `f` over the array from the left, returning the array of partial results.
```
scanl (· + ·) 0 #[1, 2, 3] = #[0, 1, 3, 6]
```
-/
@[inline]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta7c7d2be03ed8f3519ee85066a273465dede4d21a3ad195e9102c4a1cc153d6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta7c7d2be03ed8f3519ee85066a273465dede4d21a3ad195e9102c4a1cc153d6f.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97231746c799e53795db471232aebef9fc17642b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
