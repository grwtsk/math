/- Synthetic output overflow: all raw output must remain private and bounded. -/
import Lean

#eval IO.println (String.ofList (List.replicate 262144 'x'))
