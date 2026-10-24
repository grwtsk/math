# transpose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15a6c9cb04ae6f43e08c4f6aa01a141aa7125be560e6e85852522244f96ed0ff",
  "kind": "def",
  "lexical_name": "transpose",
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
  "slug": "transpose--ecf0474c3c67edda4286e59b",
  "source": {
    "blob": "17bb198c53047304d48fcfc05b1a538c7027298d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 926,
    "line": 900,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantcbaa5bfbd86e592a7ca1f8628e6a6eba49d7f01646526d78c320cc71d835040b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecf0474c3c67edda4286e59bb2c88250dea7c2fc861c398023a43e3e9a966c16",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantcbaa5bfbd86e592a7ca1f8628e6a6eba49d7f01646526d78c320cc71d835040b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15a6c9cb04ae6f43e08c4f6aa01a141aa7125be560e6e85852522244f96ed0ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 900–926.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def transpose (l : List (List α)) : List (List α) := (l.foldr go #[]).toList where
  /-- `pop : List α → StateM (List α) (List α)` transforms the input list `old`
  by taking the head of the current state and pushing it on the head of `old`.
  If the state list is empty, then `old` is left unchanged. -/
  pop (old : List α) : StateM (List α) (List α)
    | [] => (old, [])
    | a :: l => (a :: old, l)

  /-- `go : List α → Array (List α) → Array (List α)` handles the insertion of
  a new list into all the lists in the array:
  `go [a, b, c] #[l₁, l₂, l₃] = #[a::l₁, b::l₂, c::l₃]`.
  If the new list is too short, the later lists are unchanged, and if it is too long
  the array is extended:
  ```
  go [a] #[l₁, l₂, l₃] = #[a::l₁, l₂, l₃]
  go [a, b, c, d] #[l₁, l₂, l₃] = #[a::l₁, b::l₂, c::l₃, [d]]
  ```
  -/
  go (l : List α) (acc : Array (List α)) : Array (List α) :=
    let (acc, l) := acc.mapM pop l
    l.foldl (init := acc) fun arr a => arr.push [a]

/--
List of all sections through a list of lists. A section
of `[L₁, L₂, ..., Lₙ]` is a list whose first element comes from
`L₁`, whose second element comes from `L₂`, and so on.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantcbaa5bfbd86e592a7ca1f8628e6a6eba49d7f01646526d78c320cc71d835040b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantcbaa5bfbd86e592a7ca1f8628e6a6eba49d7f01646526d78c320cc71d835040b.lean#L900).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17bb198c53047304d48fcfc05b1a538c7027298d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
